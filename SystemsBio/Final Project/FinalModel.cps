<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.35 (Build 258) (http://www.copasi.org) at 2022-05-07T04:38:30Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="35" versionDevel="258" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for vgp" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (fracA_1*(Vfgly_1*P*Gly/(KgpAigly_1*KgpApi_1)/(1+Gly/KgpAglyf_1+P/KgpApi_1+Gly*P/(KgpAglyf_1*KgpAipi_1)+Gly/KgpAglyb_1+G1P/KgpAg1p_1+Gly*G1P/(KgpAig1p_1*KgpAglyb_1))-Vfgly_1*KgpAglyb_1*KgpAig1p_1/(KgpAigly_1*KgpApi_1*0.31)*G1P*Gly/(KgpAglyb_1*KgpAig1p_1)/(1+Gly/KgpAglyf_1+P/KgpApi_1+Gly*P/(KgpAglyf_1*KgpAipi_1)+Gly/KgpAglyb_1+G1P/KgpAg1p_1+Gly*G1P/(KgpAig1p_1*KgpAglyb_1)))+fracB_1*(amp^nH_1/(Kgpamp_1^nH_1*0.02)/(1+amp^nH_1/(Kgpamp_1^nH_1*0.02))*(Vfgly_1*P*Gly/(KgpBiglyf_1*KgpBpi_1))/(1+Gly/KgpBipi_1+P/KgpBiglyf_1+Gly/KgpBiglyb_1+G1P/KgpBig1p_1+Gly*P/(KgpBiglyf_1*KgpBpi_1)+Gly*G1P/(KgpBg1p_1*KgpBiglyb_1))-amp^nH_1/(Kgpamp_1^nH_1*0.02)/(1+amp^nH_1/(Kgpamp_1^nH_1*0.02))*(Vfgly_1*KgpBg1p_1*KgpBiglyb_1/(KgpBiglyf_1*KgpBpi_1*0.31)*G1P*Gly/(KgpBg1p_1*KgpBiglyb_1))/(1+Gly/KgpBipi_1+P/KgpBiglyf_1+Gly/KgpBiglyb_1+G1P/KgpBig1p_1+Gly*P/(KgpBiglyf_1*KgpBpi_1)+Gly*G1P/(KgpBg1p_1*KgpBiglyb_1))))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="G1P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="Gly" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="KgpAg1p_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="KgpAglyb_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="KgpAglyf_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="KgpAig1p_1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="KgpAigly_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="KgpAipi_1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="KgpApi_1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="KgpBg1p_1" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="KgpBig1p_1" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="KgpBiglyb_1" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="KgpBiglyf_1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="KgpBipi_1" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="KgpBpi_1" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="Kgpamp_1" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="P" order="16" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="Vfgly_1" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="amp" order="18" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="fracA_1" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="fracB_1" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="nH_1" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="uVol" order="22" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for vpglm" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfpglm_2*G1P/Kpglmg1p_2-Vfpglm_2*Kpglmg6p_2/(Kpglmg1p_2*16.620000000000001)*G6P/Kpglmg6p_2)/(1+G1P/Kpglmg1p_2+G6P/Kpglmg6p_2)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="G1P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="G6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_277" name="Kpglmg1p_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="Kpglmg6p_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Vfpglm_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="uVol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for vpgi" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vbpgi_3*Kpgig6p_3/Kpgif6p_3*0.45000000000000001*G6P/Kpgig6p_3-Vbpgi_3*F6P/Kpgif6p_3)/(1+F6P/Kpgif6p_3+G6P/Kpgig6p_3)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_268" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="Kpgif6p_3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="Kpgig6p_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Vbpgi_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="uVol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for vpfk" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfpfk_4*atp*F6P*(1+Kpfkatp_4*Kpfkf6p_4*Lo_4*(1+en_4*amp/Kpfkamp_4)^4*(1+atp/Kpfkiatp_4)^4*((1+atp/KpfkatpT_4)*(1+F6P/Kpfkf6pT_4)+FDP/KpfkfdpT_4+adp*(1+FDP/KpfkfdpT_4)/KpfkadpT_4)^3/(KpfkatpT_4*Kpfkf6pT_4*(1+amp/Kpfkamp_4)^4*(1+dn_4*atp/Kpfkiatp_4)^4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)^3))/(Kpfkatp_4*Kpfkf6p_4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)*(1+Lo_4*(1+en_4*amp/Kpfkamp_4)^4*(1+atp/Kpfkiatp_4)^4*((1+atp/KpfkatpT_4)*(1+F6P/Kpfkf6pT_4)+FDP/KpfkfdpT_4+adp*(1+FDP/KpfkfdpT_4)/KpfkadpT_4)^4/((1+amp/Kpfkamp_4)^4*(1+dn_4*atp/Kpfkiatp_4)^4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)^4)))-0.00411743*Vfpfk_4*adp*FDP*(1+Kpfkatp_4*Kpfkf6p_4*Lo_4*(1+en_4*amp/Kpfkamp_4)^4*(1+atp/Kpfkiatp_4)^4*((1+atp/KpfkatpT_4)*(1+F6P/Kpfkf6pT_4)+FDP/KpfkfdpT_4+adp*(1+FDP/KpfkfdpT_4)/KpfkadpT_4)^3/(KpfkatpT_4*Kpfkf6pT_4*(1+amp/Kpfkamp_4)^4*(1+dn_4*atp/Kpfkiatp_4)^4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)^3))/(Kpfkatp_4*Kpfkf6p_4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)*(1+Lo_4*(1+en_4*amp/Kpfkamp_4)^4*(1+atp/Kpfkiatp_4)^4*((1+atp/KpfkatpT_4)*(1+F6P/Kpfkf6pT_4)+FDP/KpfkfdpT_4+adp*(1+FDP/KpfkfdpT_4)/KpfkadpT_4)^4/((1+amp/Kpfkamp_4)^4*(1+dn_4*atp/Kpfkiatp_4)^4*((1+atp/Kpfkatp_4)*(1+F6P/Kpfkf6p_4)+FDP/Kpfkfdp_4+adp*(1+FDP/Kpfkfdp_4)/Kpfkadp_4)^4))))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="F6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_351" name="FDP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="KpfkadpT_4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="Kpfkadp_4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="Kpfkamp_4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="KpfkatpT_4" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="Kpfkatp_4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="Kpfkf6pT_4" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="Kpfkf6p_4" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="KpfkfdpT_4" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Kpfkfdp_4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="Kpfkiatp_4" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="Lo_4" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="Vfpfk_4" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="adp" order="14" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="amp" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_366" name="atp" order="16" role="substrate"/>
        <ParameterDescription key="FunctionParameter_367" name="dn_4" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="en_4" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="uVol" order="19" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for vald" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfald_5*FDP/Kaldfdp_5-Vfald_5*Kaldgap_5*Kalddhap_5/(Kaldfdp_5*9.5000000000000005e-05)*DHAP*GAP/(Kaldgap_5*Kalddhap_5))/(1+FDP/Kaldfdp_5+GAP/Kaldgap_5+DHAP/Kalddhap_5)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="DHAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_347" name="FDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="GAP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="Kalddhap_5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="Kaldfdp_5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="Kaldgap_5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="Vfald_5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="uVol" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for vtpi" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vftpi_6*GAP/Ktpigap_6-Vftpi_6*Ktpidhap_6/(Ktpigap_6*19.199999999999999)*DHAP/Ktpidhap_6)/(1+GAP/Ktpigap_6+DHAP/Ktpidhap_6)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="DHAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_344" name="GAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="Ktpidhap_6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="Ktpigap_6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="Vftpi_6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="uVol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for vgapdh" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (-11.236000000000001*Vfgad_7*DPG*NADH/(Kgapdhgap_7*Kgapdhnad_7*Kgapdhpi_7)+Vfgad_7*GAP*NAD*P/(Kgapdhgap_7*Kgapdhnad_7*Kgapdhpi_7))/(1+DPG/Kgapdh13dpg_7+GAP/Kgapdhgap_7+NAD/Kgapdhnad_7+GAP*NAD/(Kgapdhgap_7*Kgapdhnad_7)+NADH/Kgapdhnadh_7+DPG*NADH/(Kgapdh13dpg_7*Kgapdhnadh_7)+P/Kgapdhpi_7+GAP*NAD*P/(Kgapdhgap_7*Kgapdhnad_7*Kgapdhpi_7))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="DPG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_411" name="GAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="Kgapdh13dpg_7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="Kgapdhgap_7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="Kgapdhnad_7" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="Kgapdhnadh_7" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="Kgapdhpi_7" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="NAD" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="NADH" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_419" name="P" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_420" name="Vfgad_7" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="uVol" order="11" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for vpgk" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (57109*Vbpgk_8*adp*DPG/(Kpgk3pg_8*Kpgkatp_8)-Vbpgk_8*atp*P3G/(Kpgk3pg_8*Kpgkatp_8))/(1+adp/Kpgkadp_8+atp/Kpgkatp_8+DPG/Kpgk13dpg_8+adp*DPG/(Kpgk13dpg_8*Kpgkadp_8)+P3G/Kpgk3pg_8+atp*P3G/(Kpgk3pg_8*Kpgkatp_8))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="DPG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Kpgk13dpg_8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="Kpgk3pg_8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="Kpgkadp_8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="Kpgkatp_8" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="P3G" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_438" name="Vbpgk_8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="adp" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_440" name="atp" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_441" name="uVol" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for vpgm" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfpgm_9*P3G/Kpgm3pg_9-Vfpgm_9*Kpgm2pg_9/(Kpgm3pg_9*0.17999999999999999)*P2G/Kpgm2pg_9)/(1+P3G/Kpgm3pg_9+P2G/Kpgm2pg_9)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="Kpgm2pg_9" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Kpgm3pg_9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="P2G" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_406" name="P3G" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="Vfpgm_9" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="uVol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for ven" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfen_10*P2G/Ken2pg_10-Vfen_10*Kenpep_10/(Ken2pg_10*0.48999999999999999)*PEP/Kenpep_10)/(1+P2G/Ken2pg_10+PEP/Kenpep_10)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_460" name="Ken2pg_10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="Kenpep_10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="P2G" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_463" name="PEP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_464" name="Vfen_10" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="uVol" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for vpk" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfpk_11*PEP*adp/(Kpkpep_11*Kpkadp_11)-Vfpk_11*Kpkpyr_11*Kpkatp_11/(Kpkpep_11*Kpkadp_11*10304)*PYR*atp/(Kpkpyr_11*Kpkatp_11))/(1+PEP/Kpkpep_11+adp/Kpkadp_11+PEP*adp/(Kpkpep_11*Kpkadp_11)+atp/Kpkatp_11+PYR/Kpkpyr_11+PYR*atp/(Kpkpyr_11*Kpkatp_11))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="Kpkadp_11" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="Kpkatp_11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="Kpkpep_11" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="Kpkpyr_11" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="PEP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_481" name="PYR" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_482" name="Vfpk_11" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="adp" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_484" name="atp" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_485" name="uVol" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for vldh" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vfldh_12*PYR*NADH/(Kldhpyr_12*Kldhnadh_12)-Vfldh_12*Kldhlac_12*Kldhnad_12/(Kldhpyr_12*Kldhnadh_12*16198)*LAC*NAD/(Kldhlac_12*Kldhnad_12))/(1+PYR/Kldhpyr_12+NADH/Kldhnadh_12+PYR*NADH/(Kldhpyr_12*Kldhnadh_12)+LAC/Kldhlac_12+NAD/Kldhnad_12+LAC*NAD/(Kldhlac_12*Kldhnad_12))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_496" name="Kldhlac_12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="Kldhnad_12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="Kldhnadh_12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="Kldhpyr_12" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="LAC" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_501" name="NAD" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_502" name="NADH" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_503" name="PYR" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_504" name="Vfldh_12" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="uVol" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for vck" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (VrevCK_13*atp*Cr/(Kckiatp_13*Kckcr_13)-VrevCK_13*KeqCK_13/(Kckiatp_13*Kckcr_13/(Kckiadp_13*KckPCr_13))*adp*PCr/(Kckiadp_13*KckPCr_13))/(1+adp/Kckiadp_13+PCr/KckiPCr_13+PCr*adp/(Kckiadp_13*KckPCr_13)+atp/Kckiatp_13+Cr*atp/(Kckcr_13*Kckiatp_13))/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_518" name="Cr" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_519" name="KckPCr_13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="Kckcr_13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="KckiPCr_13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="Kckiadp_13" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="Kckiatp_13" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="KeqCK_13" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="PCr" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_526" name="VrevCK_13" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="adp" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_528" name="atp" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_529" name="uVol" order="11" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for vadk" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

      </MiriamAnnotation>
      <Expression>
        (Vfadk_14*atp*amp/(Kadkatp_14*Kadkamp_14)-Vfadk_14*Kadkadp_14^2/(Kadkamp_14*Kadkatp_14*2.21)*(adp/Kadkadp_14)^2)/(1+atp/Kadkatp_14+amp/Kadkamp_14+atp*amp/(Kadkatp_14*Kadkamp_14)+2*adp/Kadkadp_14+adp^2/Kadkadp_14^2)/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_516" name="Kadkadp_14" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="Kadkamp_14" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="Kadkatp_14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="Vfadk_14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="adp" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_543" name="amp" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="atp" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_545" name="uVol" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for vatpase" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_15*atp/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="atp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_517" name="k_15" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="uVol" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for vfout" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kout_16*LAC/uVol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_555" name="LAC" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_556" name="kout_16" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="uVol" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Lambeth2002_Glycogenolysis" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/12220081"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-05-05T17:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6623617994"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://www.geneontology.org/GO:0006096"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0001103"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.      <br/>
          To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not..      <br/>
    <br/>
          To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="uVol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="adp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="NADH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="atp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PCr" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="G1P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="G6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="F6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="FDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="DHAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="GAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="DPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="P3G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="P2G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="LAC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Cr" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="amp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PYR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="NAD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Gly" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="LACo" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="vgp" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6437" name="fracA_1" value="0.4"/>
          <Constant key="Parameter_5185" name="Vfgly_1" value="0.05"/>
          <Constant key="Parameter_4363" name="KgpAigly_1" value="0.002"/>
          <Constant key="Parameter_4572" name="KgpApi_1" value="0.004"/>
          <Constant key="Parameter_6076" name="KgpAglyf_1" value="0.0023"/>
          <Constant key="Parameter_5186" name="KgpAipi_1" value="0.0047"/>
          <Constant key="Parameter_5183" name="KgpAglyb_1" value="0.00015"/>
          <Constant key="Parameter_4984" name="KgpAg1p_1" value="0.0028"/>
          <Constant key="Parameter_6442" name="KgpAig1p_1" value="0.0101"/>
          <Constant key="Parameter_6459" name="fracB_1" value="0.6"/>
          <Constant key="Parameter_6452" name="nH_1" value="1.75"/>
          <Constant key="Parameter_6438" name="Kgpamp_1" value="9.7e-05"/>
          <Constant key="Parameter_6451" name="KgpBiglyf_1" value="0.015"/>
          <Constant key="Parameter_4570" name="KgpBpi_1" value="0.0002"/>
          <Constant key="Parameter_5301" name="KgpBipi_1" value="0.0051"/>
          <Constant key="Parameter_3726" name="KgpBiglyb_1" value="0.0042"/>
          <Constant key="Parameter_3479" name="KgpBig1p_1" value="0.0074"/>
          <Constant key="Parameter_3729" name="KgpBg1p_1" value="0.0028"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_5183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_6076"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_6442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_5186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_4572"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_3729"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_3479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_3726"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_6451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_5301"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_4570"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_6438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_5185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_6437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_6459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_6452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="vpglm" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="Vfpglm_2" value="0.48"/>
          <Constant key="Parameter_3755" name="Kpglmg1p_2" value="6.3e-05"/>
          <Constant key="Parameter_5014" name="Kpglmg6p_2" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_3755"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_5014"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_5013"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="vpgi" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4881" name="Vbpgi_3" value="0.88"/>
          <Constant key="Parameter_4428" name="Kpgig6p_3" value="0.00048"/>
          <Constant key="Parameter_4938" name="Kpgif6p_3" value="0.000119"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4938"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_4428"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4881"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="vpfk" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4073" name="Vfpfk_4" value="0.056"/>
          <Constant key="Parameter_4936" name="Kpfkatp_4" value="8e-05"/>
          <Constant key="Parameter_4496" name="Kpfkf6p_4" value="0.00018"/>
          <Constant key="Parameter_5255" name="Lo_4" value="13"/>
          <Constant key="Parameter_6094" name="en_4" value="0.01"/>
          <Constant key="Parameter_5258" name="Kpfkamp_4" value="6e-05"/>
          <Constant key="Parameter_4284" name="Kpfkiatp_4" value="0.00087"/>
          <Constant key="Parameter_4336" name="KpfkatpT_4" value="0.00025"/>
          <Constant key="Parameter_4775" name="Kpfkf6pT_4" value="0.02"/>
          <Constant key="Parameter_4334" name="KpfkfdpT_4" value="0.0042"/>
          <Constant key="Parameter_5783" name="KpfkadpT_4" value="0.00231"/>
          <Constant key="Parameter_5786" name="dn_4" value="0.01"/>
          <Constant key="Parameter_5104" name="Kpfkfdp_4" value="0.0042"/>
          <Constant key="Parameter_5785" name="Kpfkadp_4" value="0.00271"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_5783"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_5785"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_5258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_4336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_4936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_4775"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_4496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_4334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_4284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_5255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_4073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_5786"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_6094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="vald" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3245" name="Vfald_5" value="0.104"/>
          <Constant key="Parameter_4017" name="Kaldfdp_5" value="0.00027"/>
          <Constant key="Parameter_3243" name="Kaldgap_5" value="0.0007"/>
          <Constant key="Parameter_5925" name="Kalddhap_5" value="0.00238"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_5925"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_4017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_3243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Parameter_3245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="vtpi" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6418" name="Vftpi_6" value="12"/>
          <Constant key="Parameter_6419" name="Ktpigap_6" value="0.00034"/>
          <Constant key="Parameter_3693" name="Ktpidhap_6" value="0.00061"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Parameter_3693"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_6419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_6418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="vgapdh" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6417" name="Vfgad_7" value="1.65"/>
          <Constant key="Parameter_5651" name="Kgapdhgap_7" value="2.5e-06"/>
          <Constant key="Parameter_5644" name="Kgapdhnad_7" value="9e-05"/>
          <Constant key="Parameter_5646" name="Kgapdhpi_7" value="0.00029"/>
          <Constant key="Parameter_5649" name="Kgapdh13dpg_7" value="8e-07"/>
          <Constant key="Parameter_4100" name="Kgapdhnadh_7" value="3.3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_5651"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_5644"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_4100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Parameter_5646"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_6417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="vpgk" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4101" name="Vbpgk_8" value="1.12"/>
          <Constant key="Parameter_6185" name="Kpgk3pg_8" value="0.0012"/>
          <Constant key="Parameter_4094" name="Kpgkatp_8" value="0.00035"/>
          <Constant key="Parameter_4482" name="Kpgkadp_8" value="8.3e-05"/>
          <Constant key="Parameter_4832" name="Kpgk13dpg_8" value="1.9e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_6185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_4482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Parameter_4094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_4101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="vpgm" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4472" name="Vfpgm_9" value="1.12"/>
          <Constant key="Parameter_4833" name="Kpgm3pg_9" value="0.0002"/>
          <Constant key="Parameter_4481" name="Kpgm2pg_9" value="1.4e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Parameter_4481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_4472"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="ven" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4479" name="Vfen_10" value="0.192"/>
          <Constant key="Parameter_3804" name="Ken2pg_10" value="0.00012"/>
          <Constant key="Parameter_4480" name="Kenpep_10" value="0.00037"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Parameter_3804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Parameter_4480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_4479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="vpk" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4204" name="Vfpk_11" value="1.44"/>
          <Constant key="Parameter_4568" name="Kpkpep_11" value="8e-05"/>
          <Constant key="Parameter_4205" name="Kpkadp_11" value="0.0003"/>
          <Constant key="Parameter_5018" name="Kpkpyr_11" value="0.0133"/>
          <Constant key="Parameter_3809" name="Kpkatp_11" value="0.00113"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_4205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Parameter_3809"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Parameter_4568"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Parameter_5018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Parameter_4204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="vldh" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3803" name="Vfldh_12" value="1.92"/>
          <Constant key="Parameter_3808" name="Kldhpyr_12" value="0.000335"/>
          <Constant key="Parameter_3806" name="Kldhnadh_12" value="2.167e-06"/>
          <Constant key="Parameter_6386" name="Kldhlac_12" value="0.0157"/>
          <Constant key="Parameter_6387" name="Kldhnad_12" value="0.000849"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Parameter_6386"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Parameter_6387"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Parameter_3806"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Parameter_3808"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_3803"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="vck" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3379" name="VrevCK_13" value="0.5"/>
          <Constant key="Parameter_3506" name="Kckiatp_13" value="0.0033"/>
          <Constant key="Parameter_6388" name="Kckcr_13" value="0.0038"/>
          <Constant key="Parameter_6385" name="KeqCK_13" value="233"/>
          <Constant key="Parameter_3659" name="Kckiadp_13" value="0.00067"/>
          <Constant key="Parameter_3657" name="KckPCr_13" value="0.00111"/>
          <Constant key="Parameter_3655" name="KckiPCr_13" value="0.0039"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Parameter_3657"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Parameter_6388"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Parameter_3655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Parameter_3659"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Parameter_3506"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_6385"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Parameter_3379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="vadk" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3658" name="Vfadk_14" value="0.88"/>
          <Constant key="Parameter_6036" name="Kadkatp_14" value="0.00027"/>
          <Constant key="Parameter_6039" name="Kadkamp_14" value="0.00032"/>
          <Constant key="Parameter_4731" name="Kadkadp_14" value="0.00035"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_4731"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Parameter_6039"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Parameter_6036"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Parameter_3658"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="vatpase" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6038" name="k_15" value="7.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Parameter_6038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="vfout" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6354" name="kout_16" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_6354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[adp]" value="7.8287829879999887e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[NADH]" value="3.01107038e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[atp]" value="4.9381554231999914e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PCr]" value="2.0878762014919956e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[G1P]" value="3.0110703799999959e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P]" value="2.4690777115999957e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[G6P]" value="4.5166055700000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[F6P]" value="1.2044281519999984e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[FDP]" value="4.2154985319999996e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[DHAP]" value="4.2154985319999996e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[GAP]" value="1.806642227999998e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[DPG]" value="3.9143914939999912e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P3G]" value="3.0110703799999959e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P2G]" value="3.0110703799999949e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[LAC]" value="7.8287829879999994e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[Cr]" value="3.20980102508e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[amp]" value="12044281520000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PEP]" value="6.0221407599999898e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PYR]" value="8.6718826944e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[NAD]" value="3.0110703800000001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[Gly]" value="6.7447976512000002e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[LACo]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=fracA_1" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=Vfgly_1" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAigly_1" value="0.002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpApi_1" value="0.0040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAglyf_1" value="0.0023" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAipi_1" value="0.0047000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAglyb_1" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAg1p_1" value="0.0028" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpAig1p_1" value="0.0101" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=fracB_1" value="0.59999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=nH_1" value="1.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=Kgpamp_1" value="9.7e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBiglyf_1" value="0.014999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBpi_1" value="0.00020000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBipi_1" value="0.0051000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBiglyb_1" value="0.0041999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBig1p_1" value="0.0074000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgp],ParameterGroup=Parameters,Parameter=KgpBg1p_1" value="0.0028" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpglm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpglm],ParameterGroup=Parameters,Parameter=Vfpglm_2" value="0.47999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpglm],ParameterGroup=Parameters,Parameter=Kpglmg1p_2" value="6.3e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpglm],ParameterGroup=Parameters,Parameter=Kpglmg6p_2" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgi],ParameterGroup=Parameters,Parameter=Vbpgi_3" value="0.88" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgi],ParameterGroup=Parameters,Parameter=Kpgig6p_3" value="0.00048000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgi],ParameterGroup=Parameters,Parameter=Kpgif6p_3" value="0.00011900000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Vfpfk_4" value="0.056000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkatp_4" value="8.0000000000000007e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkf6p_4" value="0.00018000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Lo_4" value="13" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=en_4" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkamp_4" value="6.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkiatp_4" value="0.00087000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=KpfkatpT_4" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkf6pT_4" value="0.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=KpfkfdpT_4" value="0.0041999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=KpfkadpT_4" value="0.00231" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=dn_4" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkfdp_4" value="0.0041999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpfk],ParameterGroup=Parameters,Parameter=Kpfkadp_4" value="0.0027100000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vald]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vald],ParameterGroup=Parameters,Parameter=Vfald_5" value="0.104" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vald],ParameterGroup=Parameters,Parameter=Kaldfdp_5" value="0.00027" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vald],ParameterGroup=Parameters,Parameter=Kaldgap_5" value="0.00069999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vald],ParameterGroup=Parameters,Parameter=Kalddhap_5" value="0.0023800000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vtpi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vtpi],ParameterGroup=Parameters,Parameter=Vftpi_6" value="12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vtpi],ParameterGroup=Parameters,Parameter=Ktpigap_6" value="0.00034000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vtpi],ParameterGroup=Parameters,Parameter=Ktpidhap_6" value="0.00060999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Vfgad_7" value="1.6499999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Kgapdhgap_7" value="2.5000000000000002e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Kgapdhnad_7" value="9.0000000000000006e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Kgapdhpi_7" value="0.00029" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Kgapdh13dpg_7" value="7.9999999999999996e-07" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vgapdh],ParameterGroup=Parameters,Parameter=Kgapdhnadh_7" value="3.3000000000000002e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk],ParameterGroup=Parameters,Parameter=Vbpgk_8" value="1.1200000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk],ParameterGroup=Parameters,Parameter=Kpgk3pg_8" value="0.0011999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk],ParameterGroup=Parameters,Parameter=Kpgkatp_8" value="0.00035" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk],ParameterGroup=Parameters,Parameter=Kpgkadp_8" value="8.2999999999999998e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgk],ParameterGroup=Parameters,Parameter=Kpgk13dpg_8" value="1.9e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgm],ParameterGroup=Parameters,Parameter=Vfpgm_9" value="1.1200000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgm],ParameterGroup=Parameters,Parameter=Kpgm3pg_9" value="0.00020000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpgm],ParameterGroup=Parameters,Parameter=Kpgm2pg_9" value="1.4e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[ven]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[ven],ParameterGroup=Parameters,Parameter=Vfen_10" value="0.192" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[ven],ParameterGroup=Parameters,Parameter=Ken2pg_10" value="0.00012" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[ven],ParameterGroup=Parameters,Parameter=Kenpep_10" value="0.00036999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk],ParameterGroup=Parameters,Parameter=Vfpk_11" value="1.4399999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk],ParameterGroup=Parameters,Parameter=Kpkpep_11" value="8.0000000000000007e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk],ParameterGroup=Parameters,Parameter=Kpkadp_11" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk],ParameterGroup=Parameters,Parameter=Kpkpyr_11" value="0.013299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vpk],ParameterGroup=Parameters,Parameter=Kpkatp_11" value="0.0011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh],ParameterGroup=Parameters,Parameter=Vfldh_12" value="1.9199999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh],ParameterGroup=Parameters,Parameter=Kldhpyr_12" value="0.00033500000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh],ParameterGroup=Parameters,Parameter=Kldhnadh_12" value="2.1670000000000002e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh],ParameterGroup=Parameters,Parameter=Kldhlac_12" value="0.015699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vldh],ParameterGroup=Parameters,Parameter=Kldhnad_12" value="0.00084900000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=VrevCK_13" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=Kckiatp_13" value="0.0033" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=Kckcr_13" value="0.0038" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=KeqCK_13" value="233" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=Kckiadp_13" value="0.00067000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=KckPCr_13" value="0.0011100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vck],ParameterGroup=Parameters,Parameter=KckiPCr_13" value="0.0038999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vadk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vadk],ParameterGroup=Parameters,Parameter=Vfadk_14" value="0.88" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vadk],ParameterGroup=Parameters,Parameter=Kadkatp_14" value="0.00027" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vadk],ParameterGroup=Parameters,Parameter=Kadkamp_14" value="0.00032000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vadk],ParameterGroup=Parameters,Parameter=Kadkadp_14" value="0.00035" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vatpase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vatpase],ParameterGroup=Parameters,Parameter=k_15" value="7.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vfout]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Reactions[vfout],ParameterGroup=Parameters,Parameter=kout_16" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 7.8287829879999887e+18 1.806642227999998e+19 2.4690777115999957e+21 4.5166055700000001e+20 4.2154985319999996e+19 3.0110703799999949e+18 7.8287829879999994e+20 1.2044281519999984e+20 3.0110703799999959e+19 8.6718826944e+19 3.0110703799999959e+19 2.0878762014919956e+22 3.01107038e+17 3.9143914939999912e+19 12044281520000000 6.0221407599999898e+18 4.9381554231999914e+21 3.20980102508e+21 4.2154985319999996e+19 3.0110703800000001e+20 6.7447976512000002e+22 0 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="2400"/>
        <Parameter name="StepSize" type="float" value="0.00062500000000000001"/>
        <Parameter name="Duration" type="float" value="1.5"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="21"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="3"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[adp]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[adp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NADH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[NADH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[atp]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[atp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PCr]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PCr],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[G1P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[F6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FDP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[FDP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DHAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[DHAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[GAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DPG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[DPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P3G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P3G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P2G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[P2G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LAC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[LAC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cr]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[Cr],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[amp]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[amp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PEP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PYR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[PYR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lambeth2002_Glycogenolysis,Vector=Compartments[uVol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL6623617994_url.xml">
    <SBMLMap SBMLid="Cr" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="DHAP" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="DPG" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="F6P" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="FDP" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="G1P" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="GAP" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Gly" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="LAC" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="LACo" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="NADH" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="P" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="P2G" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="P3G" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="PCr" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PEP" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PYR" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="adp" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="amp" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="atp" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="uVol" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="vadk" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vald" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="vatpase" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="vck" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="ven" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="vfout" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vgapdh" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="vgp" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="vldh" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="vpfk" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="vpgi" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="vpgk" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="vpglm" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="vpgm" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vpk" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="vtpi" COPASIkey="Reaction_5"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
