# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"J94.9","system":"icd10"},{"code":"J06","system":"icd10"},{"code":"J64","system":"icd10"},{"code":"J18.8","system":"icd10"},{"code":"J18.1","system":"icd10"},{"code":"J06.8","system":"icd10"},{"code":"J22.X","system":"icd10"},{"code":"J95.9","system":"icd10"},{"code":"J18.9","system":"icd10"},{"code":"J18.2","system":"icd10"},{"code":"J39.3","system":"icd10"},{"code":"J68.9","system":"icd10"},{"code":"J35.9","system":"icd10"},{"code":"J12.9","system":"icd10"},{"code":"J39.9","system":"icd10"},{"code":"J03.9","system":"icd10"},{"code":"J33.9","system":"icd10"},{"code":"J44.1","system":"icd10"},{"code":"J42","system":"icd10"},{"code":"J20.9","system":"icd10"},{"code":"J15.9","system":"icd10"},{"code":"J64.X","system":"icd10"},{"code":"J70.4","system":"icd10"},{"code":"J06.9","system":"icd10"},{"code":"J06.0","system":"icd10"},{"code":"J30.4","system":"icd10"},{"code":"J18","system":"icd10"},{"code":"J43.9","system":"icd10"},{"code":"J18.0","system":"icd10"},{"code":"J67.9","system":"icd10"},{"code":"J70.9","system":"icd10"},{"code":"J96.9","system":"icd10"},{"code":"J98.9","system":"icd10"},{"code":"J84.9","system":"icd10"},{"code":"J02.9","system":"icd10"},{"code":"J42.X","system":"icd10"},{"code":"J45.9","system":"icd10"},{"code":"J22","system":"icd10"},{"code":"J93.9","system":"icd10"},{"code":"J44.9","system":"icd10"},{"code":"J21.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-respiratory-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
