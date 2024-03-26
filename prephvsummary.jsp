<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>..:: Procedure Tracking ::..</title>
  <link rel="icon"
    href="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/fv-icon.png"
    type="image/gif" sizes="16x16">
    <link rel="stylesheet"
      href="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/css/prephvSummary.css" />
    <link rel="stylesheet"
      href="${pageContext.request.contextPath}/moduleResources/ahimsa-core/css/bootstrap.min.css" />

       <script src="${pageContext.request.contextPath}/moduleResources/ahimsa-core/js/jquery/jquery.min.js"></script>


</head>
<body>

  <%!
      public String getCheckBoxContent(String key,HttpServletRequest request){
         String val = (String) request.getAttribute(key);
         if(val != null && !val.isEmpty() && val.trim().equalsIgnoreCase("X")) return "<span class='box'>X</span>";
         return "<span class='box1'>&nbsp;</span>";
      }
  %>
<style>
  .pdf-wrapper {
  padding: 0px;
  max-width: 100%;
  margin: 0px;
}

.pdf-comment {
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.sum-header h2{
  margin-bottom: 10px;
}
.pdf-text-left{
  color:#fff !important;
}

.sum-header {
    width: 100%;
    margin-top: 46px;
}
.sum-header img{
  height: 32px; position: absolute;
}
#mydiv tr > .pdf-field,.pdf-label{
    font-size: 12px;
  }

  #mydiv td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

@media print {
#mydiv td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 0px;
}
#mydiv tr > .pdf-field,.pdf-label{
    font-size: 10px;
  }
  .box {
    border: solid 1px;
    padding: 0px 2px;
    line-height: 14px;
    font-size: 10px;
}
.text-blue {
    color: #3366ff;
    font-size: 10px;
}
.pdf-text-left{
  font-size: 10px;
}
.sum-head{
  margin-bottom: 0px;
}
.input-label{
  font-size: 10px;
}
.pdf-wrapper {
  padding: 0px;
  max-width: 100%;
  margin: 0px;
}

.pdf-comment {
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
.sub-label{
  padding: 0px 0px;
}
.sts-blue{
  display: flex;
}
.sum-header{
  width: 100%;margin-top: 0px
}
.sum-header img{
  height: 20px; position: absolute;
}
.sum-header h2{
  margin-bottom:0px;
}

}
</style>

<div class="pdf-close">

    <span id="_pdfclose" class="pdfclosebtn">&times;</span>
    <span class="pdfprint" id="divButtons" onclick="printthispage();">Print</span>
  </div>
  <div  class = "sum-header">
 <img src="${pageContext.request.contextPath}/moduleResources/procedure-tracking-module/v2/images/pdflogo.png">
<h2 class = "sum-head" style="font-size:20px;text-align:center;font-family: arial, sans-serif;">TRANSCATHETER AORTIC VALVE SCREENING </h2>
</div>

<table id="mydiv">
  <tr class="pdf-head-blue">
    <td class="pdf-text-left" colspan="4">Patient Selection Form</td>
  </tr>
  <tr>
    <td class="pdf-label">Date (dd-mm-yyyy)</td>
    <td class="pdf-field">${date}</td>
    <td class="pdf-label">Physician</td>
    <td class="pdf-field">${physician}</td>
  </tr>
  <tr>
    <td class="pdf-label">Hospital</td>
    <td class="pdf-field">${hospital}</td>
    <td class="pdf-label">Department</td>
    <td class="pdf-field">${department}</td>
  </tr>
  <tr>
    <td class="pdf-label">Address</td>
    <td class="pdf-field">${haddress}</td>
    <td class="pdf-label">Email</td>
    <td class="pdf-field">${dremail}</td>
  </tr>
  <tr>
    <td class="pdf-label">City, Province, Country</td>
    <td class="pdf-field">${hlocation}</td>
    <td class="pdf-label">Telephone <br>Mobile phone</td>
    <td class="pdf-field">${tel}</td>
  </tr>
  <tr class="pdf-head-red">
    <td class="pdf-text-left" colspan="4">Patient Information</td>
  </tr>
  <tr>
    <td class="pdf-label">Name</td>
    <td class="pdf-field">${pname}</td>
    <td class="pdf-label">Height (cm)</td>
    <td class="pdf-field">${_height_ht_PREPHV}</td>
  </tr>
  <tr>
    <td class="pdf-label">Date of Birth (dd-mm-yyyy)</td>
    <td class="pdf-field">${bdate}</td>
    <td class="pdf-label">Weight (kg)</td>
    <td class="pdf-field">${_weight_wt_PREPHV}</td>
  </tr>
  <tr>
    <td class="pdf-label">Age</td>
    <td class="pdf-field">${cage}</td>
    <td class="pdf-label">BMI</td>
    <td class="pdf-field">${_bmi_bmi_PREPHV}</td>
  </tr>
  <tr>
    <td class="pdf-label">Gender</td>
    <td class="pdf-field">${gender}</td>
    <td class="pdf-label">BSA</td>
    <td class="pdf-field">${_bsa_bsa_PREPHV}</td>
  </tr>
  <tr>
    <td class="pdf-label">Previous cardiac surgery</td>
    <td class="pdf-field">${prevcardiacsurgery}</td>
    <td class="pdf-label">EuroSCORE <div class="sts-blue text-blue">Use EuroSCORE worksheet</div></td>
    <td class="pdf-field">
      <div class="sub-label-border">
        <div class="sub-label">Log. EuroSCORE (%)</div>
        <div class="sub-label">EuroScore II</div>
      </div>
      <div class="sub-field-border">
        <div class="sub-field">${euroscore1}</div>
        <div class="sub-field">${euroscore2}</div>
      </div>
    </td>
  </tr>
  <tr>
    <td class="pdf-label">Grafts</td>
    <td class="pdf-field">${pat_graft}</td>
    <td class="pdf-label">STS score <div class="sts-blue text-blue">Online STS risk calculator</div></td>
    <td class="pdf-field">
      <div class="sub-label-border">
        <div class="sub-label">Mortality</div>
        <div class="sub-label">Mortality & Morbidity</div>
      </div>
      <div class="sub-field-border">
        <div class="sub-field">${itrom}</div>
        <div class="sub-field">${itmom}</div>
      </div>
    </td>
  </tr>
  <tr>
    <td class="pdf-label">NYHA Functional Class</td>
   <td class="pdf-field">
     <%=  getCheckBoxContent("_nhya_nhya_SYMPTOMS_I",request) %>
     <span class="input-label">I</span>
      <%=  getCheckBoxContent("_nhya_nhya_SYMPTOMS_II",request) %>
     <span class="input-label">II</span>
     <%=  getCheckBoxContent("_nhya_nhya_SYMPTOMS_III",request) %>
     <span class="input-label">III</span>
     <%=  getCheckBoxContent("_nhya_nhya_SYMPTOMS_IV",request) %>
     <span class="input-label">IV</span>
   </td>
    <td rowspan="2" class="pdf-label">Others</td>
    <td rowspan="2"class="pdf-field">${_crothers_crothers_SYMPTOMS}</td>
  </tr>
  <tr>
    <td class="pdf-label">CCSC angina</td>
    <td class="pdf-field">
      <%=  getCheckBoxContent("_ccsc_ccsc_SYMPTOMS_I",request) %>
      <span class="input-label">I</span>
      <%=  getCheckBoxContent("_ccsc_ccsc_SYMPTOMS_II",request) %>
      <span class="input-label">II</span>
      <%=  getCheckBoxContent("_ccsc_ccsc_SYMPTOMS_III",request) %>
      <span class="input-label">III</span>
      <%=  getCheckBoxContent("_ccsc_ccsc_SYMPTOMS_IV",request) %>
      <span class="input-label">IV</span>
    </td>
  </tr>
  <tr>
    <td class="pdf-label">Syncope</td>
    <td class="pdf-field">${_syncope_syncope_SYMPTOMS}</td>
    <td rowspan="2" class="pdf-label">Surgical Risk</td>
    <td rowspan="2" class="pdf-field">${surgical_risk}</td>
  </tr>
  <tr>
    <td class="pdf-label">Renal function (Cr) / (GFR)</td>
    <td class="pdf-field">${trf}</td>
  </tr>
  <%-- <tr class="pdf-head-blue">
    <td class="pdf-text-left" colspan="4">Others 12</td>
  </tr>
  <tr>
    <td colspan="4" class="pdf-field">Others 123</td>
  </tr> --%>

  <tr class="pdf-head-green">
    <td class="pdf-text-left" colspan="4">Echocardiography</td>
  </tr>
  <tr>
    <td class="pdf-label">Date of Exam (dd-mm-yyyy)</td>
    <td class="pdf-field">${_dtex_dtex_ECHO}</td>
    <td class="pdf-label">Annulus Width (18-29mm)</td>
    <td class="pdf-field"></td>
  </tr>
  <tr>
    <td class="pdf-label">Mean Gradient (mmHg)</td>
    <td class="pdf-field">${_meang_meang_ECHO}</td>
    <td class="pdf-label">Peak-to-Peak Gradien (mmHg)</td>
    <td class="pdf-field">${_ptpgrad_ptpgrad_ECHO}</td>
  </tr>
  <tr>
    <td class="pdf-label">AO Valve Area (cm<sup>2</sup>)</td>
    <td class="pdf-field">${_aovalve_aovalve_ECHO}</td>
    <td class="pdf-label">LVEF (%) (<20%)</td>
    <td class="pdf-field">${_lvefper_lvefper_ECHO}</td>
  </tr>
  <tr>
    <td class="pdf-label">LV Wall Thickness (cm)</td>
    <td class="pdf-field">
      <%=  getCheckBoxContent("_lvvalue_lvvalue_ECHO_1",request) %>
      <span class="input-label">0.6 to 1.3</span>
      <%=  getCheckBoxContent("_lvvalue_lvvalue_ECHO_2",request) %>
      <span class="input-label">1.4 to 1.6</span>
      <%=  getCheckBoxContent("_lvvalue_lvvalue_ECHO_3",request) %>
      <span class="input-label">&#x2265; 1.7</span>
    </td>
    <td class="pdf-label">Sig. Sigmoid Septum</td>
    <td class="pdf-field">${_sigmoid_sigmoid_ECHO}</td>
  </tr>
  <tr>
    <td class="pdf-label">MR Grade</td>
    <td class="pdf-field">
      <%=  getCheckBoxContent("_mrgrade_mrgrade_ECHO_1",request) %>
      <span class="input-label">0</span>
      <%=  getCheckBoxContent("_mrgrade_mrgrade_ECHO_2",request) %>
      <span class="input-label">1</span>
      <%=  getCheckBoxContent("_mrgrade_mrgrade_ECHO_3",request) %>
      <span class="input-label">2</span>
      <%=  getCheckBoxContent("_mrgrade_mrgrade_ECHO_4",request) %>
      <span class="input-label">3</span>
      <%=  getCheckBoxContent("_mrgrade_mrgrade_ECHO_5",request) %>
      <span class="input-label">4</span>
    </td>
    <td class="pdf-label">AI Grade</td>
    <td class="pdf-field">
      <%=  getCheckBoxContent("_aigradeec_aigradeec_ECHO_1",request) %>
      <span class="input-label">0</span>
      <%=  getCheckBoxContent("_aigradeec_aigradeec_ECHO_2",request) %>
      <span class="input-label">1</span>
      <%=  getCheckBoxContent("_aigradeec_aigradeec_ECHO_3",request) %>
      <span class="input-label">2</span>
      <%=  getCheckBoxContent("_aigradeec_aigradeec_ECHO_4",request) %>
      <span class="input-label">3</span>
      <%=  getCheckBoxContent("_aigradeec_aigradeec_ECHO_5",request) %>
      <span class="input-label">4</span>
    </td>
  </tr>
  <tr class="pdf-head-green">
    <td class="pdf-text-left" colspan="4">Angiography</td>
  </tr>
  <tr>
    <td class="pdf-label">Date of Exam (yyyy-mm-dd)</td>
    <td class="pdf-field">${_dtex_dtex_ANGIO}</td>
    <td rowspan="2" class="pdf-label">Coronary Art Disease</td>
    <td rowspan="2" class="pdf-field">${_coronaryartdis_coronaryartdis_ANGIO}</td>
  </tr>
  <tr>
    <td class="pdf-label">Porcelain Ao</td>
    <td class="pdf-field">${_porcelain_porcelain_ANGIO}</td>
  </tr>
  <tr>
    <td class="pdf-label">Mean Gradient (mmHg)</td>
    <td class="pdf-field">${_meang_meang_ANGIO}</td>
    <td class="pdf-label">Peak-to-Peak Gradient(mmHg)</td>
    <td class="pdf-field">${_ptpgrad_ptpgrad_ANGIO}</td>
  </tr>
  <tr>
    <td class="pdf-label">AO Valve Area (cm<sup>2</sup>)</td>
    <td class="pdf-field">${_aovalve_aovalve_ANGIO}</td>
    <td class="pdf-label">AI Grade</td>
    <td class="pdf-field">
      <%=  getCheckBoxContent("_aigradean_aigradean_ANGIO_1",request) %>
      <span class="input-label">&#x2264; 1</span>
      <%=  getCheckBoxContent("_aigradean_aigradean_ANGIO_2",request) %>
      <span class="input-label">= 2</span>
      <%=  getCheckBoxContent("_aigradean_aigradean_ANGIO_3",request) %>
      <span class="input-label">> 2+</span>
    </td>
  </tr>

  <tr class="pdf-head-green">
    <td class="pdf-text-left" colspan="4">CT / MRI Scan</td>
  </tr>
  <tr>
    <td class="pdf-label">Date of Exam (dd-mm-yyyy)</td>
    <td class="pdf-field">${_doexam_doexam_CTMRI}</td>
    <td class="pdf-label">Optimal angle</td>
    <td class="pdf-field">${optimalangle}</td>
  </tr>
  <tr>
    <td class="pdf-label">Native Aortic Valve</td>
    <td class="pdf-field">
        <%=  getCheckBoxContent("_nataorval_nataorval_CTMRI_1",request) %>
      <span class="input-label">Tricuspid</span>
        <%=  getCheckBoxContent("_nataorval_nataorval_CTMRI_2",request) %>
      <span class="input-label">Bicuspid</span>
      
        <%=  getCheckBoxContent("_nataorval_nataorval_CTMRI_3",request) %>
      <span class="input-label">Unicuspid</span>
    </td>
    <td class="pdf-label">Bioprosthetic Aortic Valve</td>
    <td class="pdf-field">${_bioprostheticaovalue_bioprosaorval_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Annulus Width (mm)</td>
    <td class="pdf-field">
      <div class="sub-split-field-top">${_permin_permin_CTMRI}</div>
      <div class="sub-split-field-bottom">${ct_annulus_width}</div>
    </td>
    <td class="pdf-label">LVOT assessment</td>
    <td class="pdf-field">${_lvotcalcium_lvotcalcium_CTMRI}<br>
      ${_lvotdia_lvotdia_CTMRI}<br>
    ${_lvotcmnt_lvotcmnt_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">AO Valve Calcification</td>
    <td class="pdf-field">${_anncalcium_anncalcium_CTMRI}<br>${_leafletca_leafletca_CTMRI}</td>
    <td class="pdf-label">Cusp affected</td>
    <td class="pdf-field">${_cuspaffected_cuspaffected_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">AO Root Width (>30mm)</td>
    <td class="pdf-field">${_msovdia1_msovdia1_CTMRI}</td>
    <td class="pdf-label">STJ</td>
    <td class="pdf-field">${_stjcalcium_stjcalcium_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Ascending Ao (<41mm)</td>
    <td class="pdf-field">${_ardia_ardia_CTMRI}</td>
    <td class="pdf-label">Annular angulation</td>
    <td class="pdf-field">${_annularangulation_annularangulation_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Septal Buldge</td>
    <td class="pdf-field">${_septalbuldge_septalbuldge_CTMRI}</td>
    <td class="pdf-label">Unfolded Ao</td>
    <td class="pdf-field">${_uaorta_uaorta_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Porcelain Ao</td>
    <td class="pdf-field">${_paorta_paorta_CTMRI}</td>
    <td class="pdf-label">Ascend AO Calcium</td>
    <td class="pdf-field"></td>
  </tr>
  <tr>
    <td class="pdf-label">L Coronary Ht (>13mm)</td>
    <td class="pdf-field">${_lcheight_lcheight_CTMRI}</td>
    <td class="pdf-label">R Coronary Ht (>13mm)</td>
    <td class="pdf-field">${_rcheight_rcheight_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Right Common Iliac (>5mm)</td>
    <td class="pdf-field">${_rciliacartery_rciliacartery_CTMRI}</td>
    <td class="pdf-label">Left Common Iliac (>5mm)</td>
    <td class="pdf-field">${_lciliacartery_lciliacartery_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Right External Iliac (>5mm)</td>
    <td class="pdf-field">${_reiliacartery_reiliacartery_CTMRI}</td>
    <td class="pdf-label">Left External Iliac (>5mm)</td>
    <td class="pdf-field">${_leiliacartery_leiliacartery_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Right Fem Artery (>5mm)</td>
    <td class="pdf-field">${_rcfemoralartery_rcfemoralartery_CTMRI}</td>
    <td class="pdf-label">Left Fem Artery (>5mm)</td>
    <td class="pdf-field">${_lcfemoralartery_lcfemoralartery_CTMRI}</td>
  </tr>
  <tr>
    <td class="pdf-label">Right Subclavian A (>5mm)</td>
    <td class="pdf-field">${_rsartery_rsartery_CTMRI}</td>
    <td class="pdf-label">Left Subclavian A (>5mm)</td>
    <td class="pdf-field">${_lsartery_lsartery_CTMRI}</td>
  </tr>
  <tr class="pdf-head-brown">
    <td class="pdf-text-left" colspan="4">TAVI procedure plan</td>
  </tr>
  <tr>
    <td class="pdf-label">Approach</td>
    <td  colspan="2">
          <span class="input-label">Transfemoral</span>
          <%=  getCheckBoxContent("_transfem_transfemr_PPLAN_R",request) %>
          <span class="input-label">R</span>
        <%=  getCheckBoxContent("_transfem_transfemr_PPLAN_L",request) %>
          <span class="input-label">L</span>
          <span class="input-label">Transaxillary</span>
          <%=  getCheckBoxContent("_transax_transaxr_PPLAN_R",request) %>
          <span class="input-label">R</span>
        <%=  getCheckBoxContent("_transax_transaxr_PPLAN_L",request) %>
          <span class="input-label">L</span>
    </td>
    <td  colspan="2">
          <span class="input-label">Direct Aortic</span>
          <%=  getCheckBoxContent("_surtavi_surtavi_PPLAN_D",request) %>
          <span class="input-label">Transapical</span>
          <%=  getCheckBoxContent("_surtavi_surtavi_PPLAN_T",request) %>
    </td>
  </tr>
  <tr align="center" >
        <td  class="pdf-label" rowspan="3">Suitable valves</td>
        <td  colspan="2" style="background:#c4bd97">
          <span class="input-label">Medtronic Evolut R</span>
          <%=  getCheckBoxContent("_medevolr_medevol23mm_PPLAN_23mm",request) %>
          <span class="input-label">23mm</span>
          <%=  getCheckBoxContent("_medevolr_medevol23mm_PPLAN_26mm",request) %>
          <span class="input-label">26mm</span>
         
            <%=  getCheckBoxContent("_medevolr_medevol23mm_PPLAN_29mm",request) %>
            <span class="input-label" >29mm</span>
            <%=  getCheckBoxContent("_medevolr_medevol23mm_PPLAN_34mm",request) %>
            <span class="input-label">34mm</span>
          
        </td>
        <td  colspan="2" style="background:#c4bd97">
          <span class="input-label">Edwards S3</span>
          <%=  getCheckBoxContent("_edws3_edws323mm_PPLAN_23mm",request) %>
          <span class="input-label">23mm</span>
          <%=  getCheckBoxContent("_edws3_edws323mm_PPLAN_26mm",request) %>
          <span class="input-label">26mm</span>
          
          <%=  getCheckBoxContent("_edws3_edws323mm_PPLAN_29mm",request) %>
          <span class="input-label">29mm</span>
        
        </td>
    </tr>
    <tr style="background:#c4bd97">
        <td colspan="2">
          <span class="input-label">Lotus</span>
          <%=  getCheckBoxContent("_lotus_lotus23mm_PPLAN_23mm",request) %>
          <span class="input-label">23mm</span>
          <%=  getCheckBoxContent("_lotus_lotus23mm_PPLAN_25mm",request) %>
          <span class="input-label">25mm</span>
          <%=  getCheckBoxContent("_lotus_lotus23mm_PPLAN_27mm",request) %>
          <span class="input-label">27mm</span>
          <%=  getCheckBoxContent("_lotus_lotus23mm_PPLAN_29mm",request) %>
          <span class="input-label">29mm</span>
        </td>
        <td colspan="2">Others : ${_other_other_PPLAN}</td>
    </tr>
    <tr style="background:#ddd9c4">
        <td colspan="2">
          <span class="input-label">Jena</span>
          <%=  getCheckBoxContent("_jena_jena23mm_PPLAN_23mm",request) %>
          <span class="input-label">23mm</span>
          <%=  getCheckBoxContent("_jena_jena23mm_PPLAN_25mm",request) %>
          <span class="input-label">25mm</span>
          <%=  getCheckBoxContent("_jena_jena23mm_PPLAN_27mm",request) %>
          <span class="input-label">27mm</span>
        </td>
        <td colspan="2">
          <span class="input-label">Hydra</span>
          <%=  getCheckBoxContent("_hydra_hydra22mm_PPLAN_22mm",request) %>
          <span class="input-label">22mm</span>
          <%=  getCheckBoxContent("_hydra_hydra22mm_PPLAN_26mm",request) %>
          <span class="input-label">26mm</span>
          
            <%=  getCheckBoxContent("_hydra_hydra22mm_PPLAN_30mm",request) %>
            <span class="input-label">30mm</span>
          
        </td>
    </tr>
  <tr class="pdf-head-blue">
    <td class="pdf-text-left" colspan="4">Comments</td>
  </tr>
  <tr>
    <td colspan="4" class="pdf-comment-bd pdf-field">
      <div class="pdf-wrapper">
        <p class="pdf-comment"> ${ct_comments} </p>
      </div>
</td>
  </tr>


</table>



</div>
</body>
<script>
$(document).ready(function() {
    $("#_pdfclose").click(function(){
      window.parent.popupstatus.submitstatus = "CANCELLED";
    });


    });
  function printthispage() {

document.getElementById('divButtons').style.visibility = 'hidden';
window.print();
document.getElementById('divButtons').style.visibility = 'visible';
}
</script>
</html>
