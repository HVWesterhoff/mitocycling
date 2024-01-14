<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34 (Build 251) (http://www.copasi.org) at 2023-06-30T18:15:43Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-23T22:15:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-05T15:34:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Mass action with activation (irreversible)" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:24:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * substrate * activator
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="activator" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Mass action with dual activation (irreversible)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T12:28:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * substrate * (activator1 + relative_impact * activator2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="activator1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="relative_impact" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="activator2" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Mixed Mitoxynthesis second" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T22:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * ((Nmax -N - Nd - Ndd -D -Dd -Ddd)/Nmax)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="Nmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="N" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_269" name="Nd" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="Ndd" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="D" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="Dd" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="Ddd" order="7" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="mass action for substrate and doubly diluted activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T22:50:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * substrate * activator / (activator + diluter1 + diluter2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="activator" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="diluter1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="diluter2" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Michaelis-Menten (irrev) different formulation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-11-24T12:35:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        VbyKM*S/(1+S/KM)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="VbyKM" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="KM" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:15:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>h.v.westerhoff@uva.nl</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Westerhoff</vCard:Family>
            <vCard:Given>Hans</vCard:Given>
          </rdf:Description>
        </vCard:N>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This is a mitochondrial fusion-fission-mitophagy cycling model. Nd (damaged network) -->Dd (damaged dispersed), and Dd ==> Nd have separate rate constants, but these rate constants are independent of the degree of damage (i.e. the same for D, Dd and Ddd etc: In terms of rate consttants, the cycling is the same for all types of mitochondria, i.e. healthy (, i.e. N or D), moderately damaged (.d) and intensely damaged (.dd). Names of damaged mitochondria end in d or dd and the healthy ones are just capitalized N or D (N for networkd en D for dispersed). Healthy mitochondria are added to the network by mitochondrial synthesis and highly damaged mitochondria are removed from the dispersed mitochondrial population by mitophagy. The former process is limited such that the total level of mitochondria cannot exceed Nmitomax. 
This is the initial steady state version, starting point before showing that increasing the rate constant for cycling from networked to disperse from 0.1 to 2 [by increasing k_cnd0 final_0 from 0.01 to 0.2] (which may model the addition of NGF) causes a positive ROS transient, as observed experimentally by Martorana et al, (2018, Fig. 5A). In parallel here is a transition towards the dispersed state, an increase in the quality of the mitochondria, and a decrease in ROS and ros in the network. 

This model was constructed on November 2021 in order to deal with the observation that autophagy is increased after NGF addition and that for some time.  It was checked and slightly optimized on 2022.  The model uses saturated kinetics for mitophagy if Mitophagy saturation switch is set to 1.  It this switch is set to 0 the kinetics is proportional; then the autophagy will decrease.  With this saturated kinetics the model produces a transient increase in mitophagy; after 24 there is a net decrease.  This is coreesponds with the experimemntal findings for perinuclear mitochondria.  For mitochondria in the neurites the mitophagy is also up experimentally after 24 h, as judged from MTG-Lys overlap.  In this sense the model simulates perinuclear mitochdondria more than neurite mitochondria.  

The rate constants are as found under Global Quantities (units are h and muM) and should be as shown below.

In order to model NGF addition, only k_cycling network to disperse is increased here through k_cnd0 initial.  This is done automatically if one clicks Time course and run.  Then first 100 miniutes of model is run to get close to the steady state and then the increase in the fission rate constant is effected, so as to simulate NGF addition.  

For the ROS, one should plot the renormalzied ROS, which is the ROS signal multiplied by ROSfactor after which ROS background has been added.  The idea bheind this is that only some of the ROS is measured because much reacts before detection and that we are here modeling only part of the ROS generating processes.

Recipe:
First make a working version of the model and use this; leave the source model unchanged, please.
Then click Time course and then Run.     First the system is simulated for 100 minutes to relax to its initial steady state and then at t=100 NGF addition is simulated by increasing the fission rate constant.  Copasi should then come with plots corresponding to the figures 5B, 5C and 5D plus some others.  It is not reporting the first 90 minutes.  One may click the box 'Start in steady state' and ignore the error warning, to skip the relaxation during the first 100 minutes. 

In this model we used a special representation of ROS as ROS output, i.e., 'renormalized ROS' defined by {[ROS]}*{Values[ROSfactor].InitialValue}+{Values[ROSbackground].InitialValue}.  The rationale is that there may be some background ROS (or signal used to measure ROS) that is unrelated to the processes modelled here.  And then of course, ROS that is formed by the processes modelled here may be removed by multiple reactions and diffusiion, so that only a fraction is measured.  The background ROS was here taken to equal 1 and 70% of the ROS was supposed to go unnoticed, i.e. ROS factor was taken equal to 0.54.
Mitochondrial respiration (which is doubled after 24 h in the experiments of Martorana et al), is here simulated as all mitochondria that are not strongly damaged, i.e. it is assumed thet the strongest damage also interferes with respiration, e.g. due to destruction of Complex I other than in its capacity to generate ROS.  


The rate constants are as found under Global Quantities (units are h and muM) and should be equal to:
	#	Name	     Type     	Unit	Initial Value [Unit]	Transient Value [Unit]	Rate [Unit/h]	Initial Expression [Unit]	Expression [Unit] or [Unit/h]	Noise Expression
1	1	k_cycling network to disperse	assignment	1/h	0.18	nan	nan		Values[k_cnd0_initial].InitialValue+Values[NGF added]*(Values[k_cnd0_final].InitialValue-Values[k_cnd0_initial].InitialValue)*(1-EXP(-(Time-Values[NGF addition time])/Values[t_half_cnd].InitialValue))	
2	2	k_cycling disperse to network	assignment	1/h	0.129025466	nan	nan		0.01*Values[time_factor].InitialValue*([D]+[Dd])/[Ddd]	
3	3	k_damaging	fixed	l/(µmol*h)	1.8	nan	0	0.1*Values[time_factor].InitialValue		
4	4	k_ROS degradation	fixed	1/h	1800	nan	0	100*Values[time_factor].InitialValue		
5	5	k_ROS synthesis by damage	fixed	l/(µmol*h)	90000	nan	0	500*10*Values[time_factor].InitialValue		
6	6	k_ros synthesis by high damage	fixed	1/h	360	nan	0	20*Values[time_factor].InitialValue		
7	7	relative_impact	fixed	1	100	nan	0			
8	8	k_ros synthesis by low damage	fixed	1/h	180	nan	0	10*Values[time_factor].InitialValue		
9	9	quality of networked mitochondria	assignment	1	0.25262565	nan	nan		[N]/([N]+[Nd]+[Ndd])	
10	10	k_ros degradation	fixed	1/h	1800	nan	0	100*Values[time_factor].InitialValue		
11	11	k_cnd0_final	fixed	1/h	3.6	nan	0	Values[k_cnd0_final_0].InitialValue*Values[time_factor].InitialValue		
12	12	t_half_cnd	fixed	h	3.333333333	nan	0	60/Values[time_factor].InitialValue		
13	13	k_cnd0_initial	fixed	1/h	0.18	nan	0	Values[k_cnd0_initial_0].InitialValue*Values[time_factor].InitialValue		
14	14	time_factor	fixed	1	18	nan	0			
15	15	k_constitutive damage generation networked mitochondria	fixed	1/h	0.018	nan	0	0.001*Values[time_factor].InitialValue		
16	16	N_mitomax	fixed	µmol/l	0.002	nan	0	1/500		
17	17	k_mito synthesis	fixed	µmol/(h*l)	7.20E-05	nan	0	0.0002*10/500*Values[time_factor].InitialValue		
18	18	k_mitophagy	fixed	1/h	0	nan	0	10*Values[time_factor].InitialValue*(1-Values[Mitophagy saturation switch].InitialValue)		
19	19	k_cnd0_final_0	fixed	1	0.2	nan	0			
20	20	k_cnd0_initial_0	fixed	1	0.01	nan	0			
21	21	quantity	fixed	?	0	nan	0			
22	22	quantity_1	fixed	?	0	nan	0			
23	23	quantity_2	fixed	?	0	nan	0			
24	24	VbyKMmitophagy	fixed	1/h	0.27	nan	0	0.015*Values[time_factor].InitialValue*Values[Mitophagy saturation switch].InitialValue		
25	25	KMMitophagy	fixed	?	0.0004	nan	0	0.0002*2		
26	26	ROSfactor	assignment	?	0.54	0.54	nan		0.3*1.8	
27	27	quantity_3	fixed	?	1	nan	0			
28	28	ROSbackground	assignment	?	0.45	0.45	nan		1*0.5*0.38/0.5+0.07	
29	29	renormalized ROS	assignment	?	1.031921225	nan	nan		[ROS]*Values[ROSfactor].InitialValue+Values[ROSbackground].InitialValue	
30	30	Mitophagy saturation switch	assignment	1	1	1	nan		1	
31	31	NGF addition time	fixed	?	20	nan	0			
32	32	NGF added	fixed	1	0	nan	0			
33	33	factor_extra_damage_dispersed	assignment	1	1	1	nan		1	
34	34	k_damaging_dispersed	assignment	1	1.8	nan	nan		Values[k_damaging].InitialValue*Values[factor_extra_damage_dispersed].InitialValue	
35		New Quantity	fixed		0					



Further relevant files are:

•	Excelfile Fig5D data for Fig. 5D
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-10T14:46:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="D" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T16:45:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="N" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T23:10:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Dd" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T14:39:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Nd" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T14:39:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="ROS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T14:43:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="S" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:32:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Ddd" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T22:55:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Ndd" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T22:55:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="ros" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-10T14:26:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="diluter2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T22:30:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="total ROS" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T21:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="diluter1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-30T22:30:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="quality" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T13:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Networked fraction" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T21:03:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="ros divided by ten" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T21:12:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration>/10
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="fraction cycling flux" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T21:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcN-\>D Healthy network to healthy disperse],Reference=Flux>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Dd Damaged network to damaged  disperse],Reference=Flux>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcNdd-\>Ddd Highly Damaged network to highly damaged  disperse],Reference=Flux>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy],Reference=Flux>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],Reference=Flux>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="integral ROS" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-10T13:43:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration>+(1-&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration>)*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="ROS times Dd + Ddd" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-11T22:15:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>*(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Normalized ROS" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T09:19:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=InitialConcentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="integral ROS excluding D" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-13T14:31:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>*(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="quality as per Nmax" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-13T18:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Normalized ROS (% of initial)" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T19:52:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS],Reference=Concentration>*100
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Total mitos/Max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-04T23:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>)/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="relative D+N" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-15T20:38:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=InitialConcentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="relative D + Dd + N + Nd" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-15T20:51:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=InitialConcentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=InitialConcentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=InitialConcentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=InitialConcentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="vmitophagy/Ddd" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T00:30:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],Reference=Flux>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy],Reference=Flux>)/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Mitochondria active in respiration" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-27T00:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>)/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Dispersed fraction" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>)/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Ddd of mito max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Dd of mito max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="D of mito max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Ndd mito max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Nd mito max" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="N mitomax" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_cycling network to disperse" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-23T20:18:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial],Reference=InitialValue>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF added],Reference=Value>*(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_final],Reference=InitialValue>-&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial],Reference=InitialValue>)*(1-EXP(-(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time>-&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF addition time],Reference=Value>)/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[t_half_cnd],Reference=InitialValue>))
        </Expression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_cycling disperse to network" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-23T23:07:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.01*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>*(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration>)/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration>
        </Expression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_damaging" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T13:02:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.1*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          l / h / umol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k_ROS degradation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T14:21:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          100*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_ROS synthesis by damage" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T14:24:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          500*10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          l / h / umol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_ros synthesis by high damage" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:54:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          20*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="relative_impact" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-10T16:05:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_ros synthesis by low damage" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-12T23:02:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="quality of networked mitochondria" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-13T14:34:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>/(&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k_ros degradation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-13T15:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          100*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k_cnd0_final" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-14T21:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_final_0],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="t_half_cnd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-14T21:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          60/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k_cnd0_initial" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-14T21:53:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial_0],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="time_factor" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T12:09:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Time_factor is factor by whicih all rate constants are being multiplied
        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_constitutive damage generation networked mitochondria" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T12:13:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.001*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="N_mitomax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T12:17:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          1/500
        </InitialExpression>
        <Unit>
          umol / l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_mito synthesis" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T12:22:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.0002*10/500*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          umol / l / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_mitophagy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T12:26:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>*(1-&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[Mitophagy saturation switch],Reference=InitialValue>)
        </InitialExpression>
        <Unit>
          1 / h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k_cnd0_final_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T14:58:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_cnd0_initial_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-15T14:59:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="quantity" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-11-24T13:32:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="quantity_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="quantity_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="VbyKMmitophagy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-11-24T14:35:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.015*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[Mitophagy saturation switch],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          1/h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KMMitophagy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-24T22:13:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          0.0002*2
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="ROSfactor" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T00:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.3*1.8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="quantity_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-26T21:27:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="ROSbackground" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T00:18:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1*0.5*0.38/0.5+0.07
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="renormalized ROS" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-11-24T16:46:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[ROSfactor],Reference=InitialValue>+&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[ROSbackground],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Mitophagy saturation switch" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-24T22:14:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="NGF addition time" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T10:10:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="NGF added" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T10:13:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="factor_extra_damage_dispersed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T11:06:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k_damaging_dispersed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T11:10:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[factor_extra_damage_dispersed],Reference=InitialValue>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="vcN->D Healthy network to healthy disperse" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:16:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5587" name="k1" value="0.18"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="vNd->Dd Damaged network to damaged  disperse" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:18:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6196" name="k1" value="0.18"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="vcD->NHealthy disperse to Healthy network" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:19:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6197" name="k1" value="0.129025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="vcDd->Nd Damaged disperse to network" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:20:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6195" name="k1" value="0.129025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="vN->Nd Damaging network ros dependent" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:21:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6198" name="k" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="vDd->Ddd Damaging disperse" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5586" name="k" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="vROSs disperse ROS synthesis damage activated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:25:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5585" name="k" value="90000"/>
          <Constant key="Parameter_5584" name="relative_impact" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="vm Mitophagy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:26:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5583" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="vROSd ROS degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:27:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5582" name="k1" value="1800"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="vs Mito synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-22T13:27:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5581" name="k" value="7.2e-05"/>
          <Constant key="Parameter_5580" name="Nmax" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="vcNdd->Ddd Highly Damaged network to highly damaged  disperse" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:12:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5579" name="k1" value="0.18"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="vcDdd->Ndd Highly damaged disperse to highly damaged network" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:14:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5578" name="k1" value="0.129025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="vrosd ros degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:36:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5577" name="k1" value="1800"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="vross network ros synthesis low damage activated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:40:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5576" name="k" value="180"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="vross network ros synthesis high  damage activated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T09:42:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5575" name="k" value="360"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="vNd->Ndd Further  damaging damaged network" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T12:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5899" name="k" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="constitutive ros generation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-05T16:05:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5900" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5900"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="constitutive damage generation networked mitochondria" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-09T22:08:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5898" name="k1" value="0.018"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="vm Mitophagy saturable" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-11-24T12:39:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5901" name="VbyKM" value="0.27"/>
          <Constant key="Parameter_5928" name="KM" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="NGF addition" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-02-25T10:14:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time> > &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF addition time],Reference=InitialValue>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF added]" targetKey="ModelValue_31">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D]" value="88226099103396.047" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N]" value="88226099103396.047" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd]" value="4776358201105.7725" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd]" value="56247917715439.875" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS]" value="6.4896510787867008e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[S]" value="6.022140857e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd]" value="129745257993722.86" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd]" value="204762488613313.91" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros]" value="80316631769147744" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter2]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[total ROS]" value="7.2928173964781786e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter1]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality]" value="1.8577785078960931e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction]" value="3.6769395936015661e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros divided by ten]" value="8031663176914776" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[fraction cycling flux]" value="1.6627176415333399e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS]" value="3.0176530862158387e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS times Dd + Ddd]" value="144964784515816.59" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS]" value="6.022140857e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS excluding D]" value="2.0166523969094253e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality as per Nmax]" value="176452198206792.09" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS (% of initial)]" value="6.0221408569999999e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Total mitos/Max]" value="2.8599211036518723e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D+N]" value="6.022140857e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D + Dd + N + Nd]" value="6.022140857e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[vmitophagy/Ddd]" value="1.0567784757873381e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Mitochondria active in respiration]" value="1.1873823706166886e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dispersed fraction]" value="2.3452012633984333e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd of mito max]" value="64872628996861432" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd of mito max]" value="2388179100552886" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D of mito max]" value="44113049551698016" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd mito max]" value="1.0238124430665696e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd mito max]" value="28123958857719940" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N mitomax]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse]" value="0.17999999999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network]" value="0.12902546554433794" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging]" value="1.8" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.1*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ROS degradation]" value="1800" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              100*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ROS synthesis by damage]" value="90000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              500*10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros synthesis by high damage]" value="360" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              20*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[relative_impact]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros synthesis by low damage]" value="180" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quality of networked mitochondria]" value="0.25262564975624158" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros degradation]" value="1800" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              100*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_final]" value="3.6000000000000001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_final_0],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[t_half_cnd]" value="3.3333333333333335" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              60/&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial]" value="0.17999999999999999" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial_0],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor]" value="18" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_constitutive damage generation networked mitochondria]" value="0.018000000000000002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.001*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax]" value="0.002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              1/500
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_mito synthesis]" value="7.2000000000000002e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.0002*10/500*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_mitophagy]" value="0" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              10*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>*(1-&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[Mitophagy saturation switch],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_final_0]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cnd0_initial_0]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quantity]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quantity_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quantity_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[VbyKMmitophagy]" value="0.27000000000000002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.015*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[time_factor],Reference=InitialValue>*&lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[Mitophagy saturation switch],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[KMMitophagy]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.0002*2
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[ROSfactor]" value="0.54000000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quantity_3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[ROSbackground]" value="0.45000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[renormalized ROS]" value="1.0319212246540812" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[Mitophagy saturation switch]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF addition time]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF added]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[factor_extra_damage_dispersed]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging_dispersed]" value="1.8" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcN-\>D Healthy network to healthy disperse]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcN-\>D Healthy network to healthy disperse],ParameterGroup=Parameters,Parameter=k1" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Dd Damaged network to damaged  disperse]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Dd Damaged network to damaged  disperse],ParameterGroup=Parameters,Parameter=k1" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcD-\>NHealthy disperse to Healthy network]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcD-\>NHealthy disperse to Healthy network],ParameterGroup=Parameters,Parameter=k1" value="0.12902546554433794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDd-\>Nd Damaged disperse to network]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDd-\>Nd Damaged disperse to network],ParameterGroup=Parameters,Parameter=k1" value="0.12902546554433794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vN-\>Nd Damaging network ros dependent]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vN-\>Nd Damaging network ros dependent],ParameterGroup=Parameters,Parameter=k" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vDd-\>Ddd Damaging disperse]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vDd-\>Ddd Damaging disperse],ParameterGroup=Parameters,Parameter=k" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging_dispersed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSs disperse ROS synthesis damage activated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSs disperse ROS synthesis damage activated],ParameterGroup=Parameters,Parameter=k" value="90000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ROS synthesis by damage],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSs disperse ROS synthesis damage activated],ParameterGroup=Parameters,Parameter=relative_impact" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[relative_impact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_mitophagy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSd ROS degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSd ROS degradation],ParameterGroup=Parameters,Parameter=k1" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ROS degradation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis],ParameterGroup=Parameters,Parameter=k" value="7.2000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_mito synthesis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis],ParameterGroup=Parameters,Parameter=Nmax" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[N_mitomax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcNdd-\>Ddd Highly Damaged network to highly damaged  disperse]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcNdd-\>Ddd Highly Damaged network to highly damaged  disperse],ParameterGroup=Parameters,Parameter=k1" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDdd-\>Ndd Highly damaged disperse to highly damaged network]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDdd-\>Ndd Highly damaged disperse to highly damaged network],ParameterGroup=Parameters,Parameter=k1" value="0.12902546554433794" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vrosd ros degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vrosd ros degradation],ParameterGroup=Parameters,Parameter=k1" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros degradation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis low damage activated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis low damage activated],ParameterGroup=Parameters,Parameter=k" value="180" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros synthesis by low damage],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis high  damage activated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis high  damage activated],ParameterGroup=Parameters,Parameter=k" value="360" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_ros synthesis by high damage],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Ndd Further  damaging damaged network]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Ndd Further  damaging damaged network],ParameterGroup=Parameters,Parameter=k" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_damaging],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive ros generation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive ros generation],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive damage generation networked mitochondria]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive damage generation networked mitochondria],ParameterGroup=Parameters,Parameter=k1" value="0.018000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_constitutive damage generation networked mitochondria],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],ParameterGroup=Parameters,Parameter=VbyKM" value="0.27000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[VbyKMmitophagy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],ParameterGroup=Parameters,Parameter=KM" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[KMMitophagy],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 88226099103396.047 129745257993722.86 56247917715439.875 80316631769147744 6.4896510787867008e+17 204762488613313.91 4776358201105.7725 88226099103396.047 7.2928173964781786e+17 1.8577785078960931e+17 3.6769395936015661e+17 8031663176914776 1.6627176415333399e+18 3.0176530862158387e+17 144964784515816.59 6.022140857e+17 2.0166523969094253e+17 176452198206792.09 6.0221408569999999e+19 2.8599211036518723e+17 6.022140857e+17 6.022140857e+17 1.0567784757873381e+17 1.1873823706166886e+17 2.3452012633984333e+17 64872628996861432 2388179100552886 44113049551698016 1.0238124430665696e+17 28123958857719940 0.17999999999999999 0.12902546554433794 0.25262564975624158 0.54000000000000004 0.45000000000000001 1.0319212246540812 1 1 1.8 6.022140857e+17 6.022140857e+17 6.022140857e+17 6.022140857e+17 1 1.8 1800 90000 360 100 180 1800 3.6000000000000001 3.3333333333333335 0.17999999999999999 18 0.018000000000000002 0.002 7.2000000000000002e-05 0 0.20000000000000001 0.01 0 0 0 0.27000000000000002 0.00040000000000000002 1 20 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="813"/>
        <Parameter name="StepSize" type="float" value="0.054120541209999998"/>
        <Parameter name="Duration" type="float" value="44"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="15"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="all versus time" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[NGF added]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="9"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[NGF added],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[k_cycling network to disperse]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[quality of networked mitochondria]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[quality of networked mitochondria],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[N]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Nd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ndd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Normalized ROS (% of initial)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS (% of initial)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Normalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ROS times Dd + Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS times Dd + Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[S]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total mitos/Max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Total mitos/Max],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[diluter1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[diluter2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[fraction cycling flux]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[fraction cycling flux],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[integral ROS excluding D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS excluding D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[integral ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[networked fraction]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[quality as per Nmax]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality as per Nmax],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[quality]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ros divided by ten]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros divided by ten],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ros]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[total ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[total ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[vmitophagy/Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[vmitophagy/Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="performance" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Normalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total mitos/Max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Total mitos/Max],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[fraction cycling flux]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[fraction cycling flux],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[networked fraction]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[quality]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[relative D + Dd + N + Nd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D + Dd + N + Nd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[relative D+N]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D+N],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ros divided by ten]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros divided by ten],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="fluxes" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(constitutive damage generation networked mitochondria).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive damage generation networked mitochondria],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(constitutive ros generation).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[constitutive ros generation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vN->n Damaging network ros dependent).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vN-\>Nd Damaging network ros dependent],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vROSd ROS degradation).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSd ROS degradation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vROSs disperse ROS synthesis damage activated).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vROSs disperse ROS synthesis damage activated],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcD->NHealthy disperse to Healthy network).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcD-\>NHealthy disperse to Healthy network],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcN->D Healthy network to healthy disperse).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcN-\>D Healthy network to healthy disperse],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcd'->n' Highly damaged disperse to highly damaged network).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDdd-\>Ndd Highly damaged disperse to highly damaged network],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcd->n Damaged disperse to network).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcDd-\>Nd Damaged disperse to network],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcn'->d' Highly Damaged network to highly damaged  disperse).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcNdd-\>Ddd Highly Damaged network to highly damaged  disperse],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcn->d Damaged network to damaged  disperse).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Dd Damaged network to damaged  disperse],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vd->d' Damaging disperse).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vDd-\>Ddd Damaging disperse],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vm Mitophagy).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vm Mitophagy).Flux|Time 1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vn->n' Further  damaging damaged network).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vNd-\>Ndd Further  damaging damaged network],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vrosd ros degradation).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vrosd ros degradation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vross network ros synthesis damage activated).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis low damage activated],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vross network ros synthesis high  damage activated).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vross network ros synthesis high  damage activated],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vs Mito synthesis).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[k_cycling network to disperse]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[renormalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[renormalized ROS],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mitochondria active in respiration]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Mitochondria active in respiration],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total mitos/Max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Total mitos/Max],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[networked fraction]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5C" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="[Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#7051A7"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[integral ROS excluding D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="5"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS excluding D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5E" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(vcD->NHealthy disperse to Healthy network).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcD-\>NHealthy disperse to Healthy network],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vcN->D Healthy network to healthy disperse).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vcN-\>D Healthy network to healthy disperse],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vm Mitophagy saturable).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vs Mito synthesis).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="all concentrations" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Dd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mitochondria active in respiration]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Mitochondria active in respiration],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[N]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Nd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Nd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ndd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Ndd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Normalized ROS (% of initial)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS (% of initial)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Normalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Normalized ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ROS times Dd + Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS times Dd + Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[S]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Total mitos/Max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Total mitos/Max],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[diluter1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[diluter2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[diluter2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[fraction cycling flux]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[fraction cycling flux],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[integral ROS excluding D]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS excluding D],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[integral ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[integral ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[networked fraction]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[Networked fraction],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[quality as per Nmax]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality as per Nmax],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[quality]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[quality],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[relative D + Dd + N + Nd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D + Dd + N + Nd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[relative D+N]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[relative D+N],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[renormalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[renormalized ROS species],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[rerenormalized ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[rerenormalized ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ros divided by ten]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros divided by ten],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ros]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[ros],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[total ROS]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[total ROS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[vmitophagy/Ddd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Compartments[compartment],Vector=Metabolites[vmitophagy/Ddd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Cycling" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[k_cycling disperse to network]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[k_cycling network to disperse]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fluxes" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(vm Mitophagy saturable).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vm Mitophagy saturable],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(vs Mito synthesis).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Reactions[vs Mito synthesis],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 5E_2" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[k_cycling disperse to network]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling disperse to network],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[k_cycling network to disperse]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="4"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Fig5 2023: Mitocycling initial steady state model then plus NGF for Fig7 of fusion fission paper version dicember 2022,Vector=Values[k_cycling network to disperse],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Textimprovedintialized at ststFeb28versiondoubledKMprestst and satur kin renorm playwithDFig2ABandCCoapsi.xml">
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Dd" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Ddd" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="KMMitophagy" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Mass_action_with_activation__irreversible" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Mass_action_with_dual_activation__irreversible" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Michaelis_Menten__irrev__different_formulation" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Mitochondria_active_in_respiration" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Mitophagy_saturation_switch" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Mixed_Mitoxynthesis_second" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="N" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="NGF_added" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="NGF_addition_time" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="N_mitomax" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Nd" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Ndd" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Normalized_ROS" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Normalized_ROS____of_initial" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="ROS" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="ROS_times_Dd___Ddd" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="ROSbackground" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="ROSfactor" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Total_mitos_Max" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="VbyKMmitophagy" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="constitutive_damage_generation_networked_mitochondria" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="constitutive_ros_generation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="diluter1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="diluter2" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="factor_extra_damage_dispersed" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="fraction_cycling_flux" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="integral_ROS" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="integral_ROS_excluding_D" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="k_ROS_degradation" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k_ROS_synthesis_by_damage" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_cnd0_final" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k_cnd0_final_0" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k_cnd0_initial" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k_cnd0_initial_0" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k_constitutive_damage_generation_networked_mitochondria" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k_cycling_disperse_to_network" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_cycling_network_to_disperse" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k_damaging" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k_damaging_dispersed" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k_mito_synthesis" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k_mitophagy" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k_ros_degradation" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k_ros_synthesis_by_high_damage" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k_ros_synthesis_by_low_damage" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="mass_action_for_substrate_and_doubly_diluted_activation" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="networked_fraction" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="quality" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="quality_as_per_Nmax" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="quality_of_networked_mitochondria" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="quantity" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="quantity_1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="quantity_2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="quantity_3" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="relative_D_N" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="relative_D___Dd___N___Nd" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="relative_impact" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="renormalized_ROS_0" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="ros" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="ros_divided_by_ten" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="t_half_cnd" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="time_factor" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="total_ROS" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="vN__n_Damaging_network_ros_dependent" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="vROSd_ROS_degradation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vROSs_disperse_ROS_synthesis_damage_activated" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="vcD__NHealthy_disperse_to_Healthy_network" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="vcN__D_Healthy_network_to_healthy_disperse" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="vcd___n__Highly_damaged_disperse_to_highly_damaged_network" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="vcd__n_Damaged_disperse_to_network" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="vcn___d__Highly_Damaged_network_to_highly_damaged__disperse" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="vcn__d_Damaged_network_to_damaged__disperse" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="vd__d__Damaging_disperse" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="vm_Mitophagy" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="vm_Mitophagy_saturable" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="vmitophagy_Ddd" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="vn__n__Further__damaging_damaged_network" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vrosd_ros_degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="vross_network_ros_synthesis_high__damage_activated" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="vross_network_ros_synthesis_low_damage_activated" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vs_Mito_synthesis" COPASIkey="Reaction_9"/>
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
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
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
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
