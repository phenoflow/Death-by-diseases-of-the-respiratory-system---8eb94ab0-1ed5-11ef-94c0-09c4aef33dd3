cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-diseases-of-the-respiratory-system-natural-cause-pansinusitis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-pansinusitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  death-by-diseases-of-the-respiratory-system-natural-cause-chemicalsgas---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-chemicalsgas---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-pansinusitis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-coalworker---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-coalworker---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-chemicalsgas---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-pneumoniae---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-pneumoniae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-coalworker---secondary/output
  inorganic-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: inorganic-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-pneumoniae---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: inorganic-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-unspec---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-silica---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-silica---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-classified---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-influenzae---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-influenzae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-silica---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-pyothorax---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-pyothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-influenzae---secondary/output
  specific-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: specific-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-pyothorax---secondary/output
  syncytial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: syncytial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: specific-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-vasomotor---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-vasomotor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: syncytial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  streptococcal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: streptococcal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-vasomotor---secondary/output
  peritonsillar-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: peritonsillar-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: streptococcal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-chron---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-chron---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peritonsillar-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  pleural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: pleural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-chron---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-parainfluenza---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-parainfluenza---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: pleural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-obstruct---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-obstruct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-parainfluenza---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-stenosis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-stenosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-obstruct---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-laryngotracheitis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-laryngotracheitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-stenosis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-emphysema---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-emphysema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-laryngotracheitis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-asthmaticu---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-asthmaticu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-emphysema---secondary/output
  mixed-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: mixed-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-asthmaticu---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-mycoplasma---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-mycoplasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: mixed-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  infectious-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: infectious-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-mycoplasma---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-tuberculosis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-tuberculosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: infectious-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  plaque-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: plaque-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-tuberculosis---secondary/output
  respiratory---secondary:
    run: respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: plaque-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-pneumothorax---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-pneumothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: respiratory---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-bronchiolitis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-bronchiolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-pneumothorax---secondary/output
  interstitial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: interstitial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-bronchiolitis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-fistula---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: interstitial-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-polyp---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-polyp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-fistula---secondary/output
  common-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: common-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-polyp---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-mediastinum---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-mediastinum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: common-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-druginduced---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-mediastinum---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-liquid---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-liquid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-druginduced---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-oedema---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-oedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-liquid---secondary/output
  maxillary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: maxillary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-oedema---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-manifest---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-manifest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: maxillary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-agent---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-manifest---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-effusion---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-effusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-agent---secondary/output
  spontaneous-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: spontaneous-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-effusion---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-fibre---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-fibre---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: spontaneous-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-pharynx---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-pharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-fibre---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-surgery---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-surgery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-pharynx---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-bronchiectasis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-bronchiectasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-surgery---secondary/output
  vocal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: vocal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-bronchiectasis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-nasopharyngitis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-nasopharyngitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: vocal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-eosinophilia---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-eosinophilia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-nasopharyngitis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-tonsillitis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-tonsillitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-eosinophilia---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-tonsillitis---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-asbesto---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-asbesto---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  postprocedural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: postprocedural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-asbesto---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-fibrosis---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: postprocedural-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  sphenoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: sphenoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-fibrosis---secondary/output
  ethmoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: ethmoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: sphenoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-distress---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-distress---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ethmoidal-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-tract---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-tract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-distress---secondary/output
  pulmonary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary:
    run: pulmonary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-tract---secondary/output
  death-by-diseases-of-the-respiratory-system-natural-cause-failure---secondary:
    run: death-by-diseases-of-the-respiratory-system-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: pulmonary-death-by-diseases-of-the-respiratory-system-natural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-respiratory-system-natural-cause-failure---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
