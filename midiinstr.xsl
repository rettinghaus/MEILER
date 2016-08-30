<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mei="http://www.music-encoding.org/ns/mei">
<xsl:template name="setMidiInstruments">
  <xsl:choose>
    <xsl:when test="parent::mei:staffDef">
      <xsl:value-of select="'\set Staff.midiInstrument = #&quot;'"/>
    </xsl:when>
    <xsl:when test="parent::mei:staffGrp">
      <xsl:value-of select="'  \set StaffGroup.midiInstrument = #&quot;'"/>
    </xsl:when>
  </xsl:choose>
  <xsl:choose>
    <!-- Piano -->
    <xsl:when test="@midi.instrname = 'Acoustic_Grand_Piano' or @midi.instrnum = '0'">
      <xsl:text>acoustic grand</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Bright_Acoustic_Piano' or @midi.instrnum = '1'">
      <xsl:text>bright acoustic</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Grand_Piano' or @midi.instrnum = '2'">
      <xsl:text>electric grand</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Honky-tonk_Piano' or @midi.instrnum = '3'">
      <xsl:text>honky-tonk</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Piano_1' or @midi.instrnum = '4'">
      <xsl:text>electric piano 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Piano_2' or @midi.instrnum = '5'">
      <xsl:text>electric piano 2</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Harpsichord' or @midi.instrnum = '6'">
      <xsl:text>harpsichord</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Clavi' or @midi.instrnum = '7'">
      <xsl:text>clav</xsl:text>
    </xsl:when>
    <!-- Chromatic Percussion -->
    <xsl:when test="@midi.instrname = 'Celesta' or @midi.instrnum = '8'">
      <xsl:text>celesta</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Glockenspiel' or @midi.instrnum = '9'">
      <xsl:text>glockenspiel</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Music_Box' or @midi.instrnum = '10'">
      <xsl:text>music box</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Vibraphone' or @midi.instrnum = '11'">
      <xsl:text>vibraphone</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Marimba' or @midi.instrnum = '12'">
      <xsl:text>marimba</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Xylophone' or @midi.instrnum = '13'">
      <xsl:text>xylophone</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tubular_Bells' or @midi.instrnum = '14'">
      <xsl:text>tubular bells</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Dulcimer' or @midi.instrnum = '15'">
      <xsl:text>dulcimer</xsl:text>
    </xsl:when>
    <!-- Organ -->
    <xsl:when test="@midi.instrname = 'Drawbar_Organ' or @midi.instrnum = '16'">
      <xsl:text>drawbar organ</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Percussive_Organ' or @midi.instrnum = '17'">
      <xsl:text>percussive organ</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Rock_Organ' or @midi.instrnum = '18'">
      <xsl:text>rock organ</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Church_Organ' or @midi.instrnum = '19'">
      <xsl:text>church organ</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Reed_Organ' or @midi.instrnum = '20'">
      <xsl:text>reed organ</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Accordion' or @midi.instrnum = '21'">
      <xsl:text>accordion</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Harmonica' or @midi.instrnum = '22'">
      <xsl:text>harmonica</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tango_Accordion' or @midi.instrnum = '23'">
      <xsl:text>concertina</xsl:text>
    </xsl:when>
    <!-- Guitar -->
    <xsl:when test="@midi.instrname = 'Acoustic_Guitar_nylon' or @midi.instrnum = '24'">
      <xsl:text>acoustic guitar (nylon)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Acoustic_Guitar_steel' or @midi.instrnum = '25'">
      <xsl:text>acoustic guitar (steel)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Guitar_jazz' or @midi.instrnum = '26'">
      <xsl:text>electric guitar (jazz)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Guitar_clean' or @midi.instrnum = '27'">
      <xsl:text>electric guitar (clean)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Guitar_muted' or @midi.instrnum = '28'">
      <xsl:text>electric guitar (muted)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Overdriven_Guitar' or @midi.instrnum = '29'">
      <xsl:text>overdriven guitar</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Distortion_Guitar' or @midi.instrnum = '30'">
      <xsl:text>distorted guitar</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Guitar_harmonics' or @midi.instrnum = '31'">
      <xsl:text>guitar harmonics</xsl:text>
    </xsl:when>
    <!-- Bass -->
    <xsl:when test="@midi.instrname = 'Acoustic_Bass' or @midi.instrnum = '32'">
      <xsl:text>acoustic bass</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Bass_finger' or @midi.instrnum = '33'">
      <xsl:text>electric bass (finger)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Bass_pick' or @midi.instrnum = '34'">
      <xsl:text>electric bass (pick)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Fretless_Bass' or @midi.instrnum = '35'">
      <xsl:text>fretless bass</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Slap_Bass_1' or @midi.instrnum = '36'">
      <xsl:text>slap bass 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Slap_Bass_2' or @midi.instrnum = '37'">
      <xsl:text>slap bass 2</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Synth_Bass_1' or @midi.instrnum = '38'">
      <xsl:text>synth bass 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Synth_Bass_2' or @midi.instrnum = '39'">
      <xsl:text>synth bass 2</xsl:text>
    </xsl:when>
    <!-- Strings -->
    <xsl:when test="@midi.instrname = 'Violin' or @midi.instrnum = '40'">
      <xsl:text>violin</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Viola' or @midi.instrnum = '41'">
      <xsl:text>viola</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Cello' or @midi.instrnum = '42'">
      <xsl:text>cello</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Contrabass' or @midi.instrnum = '43'">
      <xsl:text>contrabass</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tremolo_Strings' or @midi.instrnum = '44'">
      <xsl:text>tremolo strings</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pizzicato_Strings' or @midi.instrnum = '45'">
      <xsl:text>pizzicato strings</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Orchestral_Harp' or @midi.instrnum = '46'">
      <xsl:text>orchestral harp</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Timpani' or @midi.instrnum = '47'">
      <xsl:text>timpani</xsl:text>
    </xsl:when>
    <!-- Ensemble -->
    <xsl:when test="@midi.instrname = 'String_Ensemble_1' or @midi.instrnum = '48'">
      <xsl:text>string ensemble 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'String_Ensemble_2' or @midi.instrnum = '49'">
      <xsl:text>string ensemble 2</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'SynthStrings_1' or @midi.instrnum = '50'">
      <xsl:text>synthstrings 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'SynthStrings_2' or @midi.instrnum = '51'">
      <xsl:text>synthstrings 2</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Choir_Aahs' or @midi.instrnum = '52'">
      <xsl:text>choir aahs</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Voice_Oohs' or @midi.instrnum = '53'">
      <xsl:text>voice oohs</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Synth_Voice' or @midi.instrnum = '54'">
      <xsl:text>synth voice</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Orchestra_Hit' or @midi.instrnum = '55'">
      <xsl:text>orchestra hit</xsl:text>
    </xsl:when>
    <!-- Brass -->
    <xsl:when test="@midi.instrname = 'Trumpet' or @midi.instrnum = '56'">
      <xsl:text>trumpet</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Trombone' or @midi.instrnum = '57'">
      <xsl:text>trombone</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tuba' or @midi.instrnum = '58'">
      <xsl:text>tuba</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Muted_Trumpet' or @midi.instrnum = '59'">
      <xsl:text>muted trumpet</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'French_Horn' or @midi.instrnum = '60'">
      <xsl:text>french horn</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Brass_Section' or @midi.instrnum = '61'">
      <xsl:text>brass section</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'SynthBrass_1' or @midi.instrnum = '62'">
      <xsl:text>synthbrass 1</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'SynthBrass_2' or @midi.instrnum = '63'">
      <xsl:text>synthbrass 2</xsl:text>
    </xsl:when>
    <!-- Reed -->
    <xsl:when test="@midi.instrname = 'Soprano_Sax' or @midi.instrnum = '64'">
      <xsl:text>soprano sax</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Alto_Sax' or @midi.instrnum = '65'">
      <xsl:text>alto sax</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tenor_Sax' or @midi.instrnum = '66'">
      <xsl:text>tenor sax</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Baritone_Sax' or @midi.instrnum = '67'">
      <xsl:text>baritone sax</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Oboe' or @midi.instrnum = '68'">
      <xsl:text>oboe</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'English_Horn' or @midi.instrnum = '69'">
      <xsl:text>english horn</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Bassoon' or @midi.instrnum = '70'">
      <xsl:text>bassoon</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Clarinet' or @midi.instrnum = '71'">
      <xsl:text>clarinet</xsl:text>
    </xsl:when>
    <!-- Pipe -->
    <xsl:when test="@midi.instrname = 'Piccolo' or @midi.instrnum = '72'">
      <xsl:text>piccolo</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Flute' or @midi.instrnum = '73'">
      <xsl:text>flute</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Recorder' or @midi.instrnum = '74'">
      <xsl:text>recorder</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pan_Flute' or @midi.instrnum = '75'">
      <xsl:text>pan flute</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Blown_Bottle' or @midi.instrnum = '76'">
      <xsl:text>blown bottle</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Shakuhachi' or @midi.instrnum = '77'">
      <xsl:text>shakuhachi</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Whistle' or @midi.instrnum = '78'">
      <xsl:text>whistle</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Ocarina' or @midi.instrnum = '79'">
      <xsl:text>ocarina</xsl:text>
    </xsl:when>
    <!-- Synth Lead -->
    <xsl:when test="@midi.instrname = 'Lead_1_square' or @midi.instrnum = '80'">
      <xsl:text>lead 1 (square)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_2_sawtooth' or @midi.instrnum = '81'">
      <xsl:text>lead 2 (sawtooth)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_3_calliope' or @midi.instrnum = '82'">
      <xsl:text>lead 3 (calliope)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_4_chiff' or @midi.instrnum = '83'">
      <xsl:text>lead 4 (chiff)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_5_charang' or @midi.instrnum = '84'">
      <xsl:text>lead 5 (charang)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_6_voice' or @midi.instrnum = '85'">
      <xsl:text>lead 6 (voice)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_7_fifths' or @midi.instrnum = '86'">
      <xsl:text>lead 7 (fifths)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Lead_8_bass_and_lead' or @midi.instrnum = '87'">
      <xsl:text>lead 8 (bass+lead)</xsl:text>
    </xsl:when>
    <!-- Synth Pad -->
    <xsl:when test="@midi.instrname = 'Pad_1_new_age' or @midi.instrnum = '88'">
      <xsl:text>pad 1 (new age)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_2_warm' or @midi.instrnum = '89'">
      <xsl:text>pad 2 (warm)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_3_polysynth' or @midi.instrnum = '90'">
      <xsl:text>pad 3 (polysynth)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_4_choir' or @midi.instrnum = '91'">
      <xsl:text>pad 4 (choir)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_5_bowed' or @midi.instrnum = '92'">
      <xsl:text>pad 5 (bowed)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_6_metallic' or @midi.instrnum = '93'">
      <xsl:text>pad 6 (metallic)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_7_halo' or @midi.instrnum = '94'">
      <xsl:text>pad 7 (halo)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pad_8_sweep' or @midi.instrnum = '95'">
      <xsl:text>pad 8 (sweep)</xsl:text>
    </xsl:when>
    <!-- Synth Effects -->
    <xsl:when test="@midi.instrname = 'FX_1_rain' or @midi.instrnum = '96'">
      <xsl:text>fx 1 (rain)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_2_soundtrack' or @midi.instrnum = '97'">
      <xsl:text>fx 2 (soundtrack)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_3_crystal' or @midi.instrnum = '98'">
      <xsl:text>fx 3 (crystal)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_4_atmosphere' or @midi.instrnum = '99'">
      <xsl:text>fx 4 (atmosphere)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_5_brightness' or @midi.instrnum = '100'">
      <xsl:text>fx 5 (brightness)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_6_goblins' or @midi.instrnum = '101'">
      <xsl:text>fx 6 (goblins)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_7_echoes' or @midi.instrnum = '102'">
      <xsl:text>fx 7 (echoes)</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'FX_8_sci-fi' or @midi.instrnum = '103'">
      <xsl:text>fx 8 (sci-fi)</xsl:text>
    </xsl:when>
    <!-- Ethnic -->
    <xsl:when test="@midi.instrname = 'Sitar' or @midi.instrnum = '104'">
      <xsl:text>sitar</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Banjo' or @midi.instrnum = '105'">
      <xsl:text>banjo</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Shamisen' or @midi.instrnum = '106'">
      <xsl:text>shamisen</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Koto' or @midi.instrnum = '107'">
      <xsl:text>koto</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Kalimba' or @midi.instrnum = '108'">
      <xsl:text>kalimba</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Bagpipe' or @midi.instrnum = '109'">
      <xsl:text>bagpipe</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Fiddle' or @midi.instrnum = '110'">
      <xsl:text>fiddle</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Shanai' or @midi.instrnum = '111'">
      <xsl:text>shanai</xsl:text>
    </xsl:when>
    <!-- Percussive -->
    <xsl:when test="@midi.instrname = 'Tinkle_Bell' or @midi.instrnum = '112'">
      <xsl:text>tinkle bell</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Agogo' or @midi.instrnum = '113'">
      <xsl:text>agogo</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Steel_Drums' or @midi.instrnum = '114'">
      <xsl:text>steel drums</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Woodblock' or @midi.instrnum = '115'">
      <xsl:text>woodblock</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Taiko_Drum' or @midi.instrnum = '116'">
      <xsl:text>taiko drum</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Melodic_Tom' or @midi.instrnum = '117'">
      <xsl:text>melodic tom</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Synth_Drum' or @midi.instrnum = '118'">
      <xsl:text>synth drum</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Reverse_Cymbal' or @midi.instrnum = '119'">
      <xsl:text>reverse cymbal</xsl:text>
    </xsl:when>
    <!-- Sound Effects -->
    <xsl:when test="@midi.instrname = 'Guitar_Fret_Noise' or @midi.instrnum = '120'">
      <xsl:text>guitar fret noise</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Breath_Noise' or @midi.instrnum = '121'">
      <xsl:text>breath noise</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Seashore' or @midi.instrnum = '122'">
      <xsl:text>seashore</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Bird_Tweet' or @midi.instrnum = '123'">
      <xsl:text>bird tweet</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Telephone_Ring' or @midi.instrnum = '124'">
      <xsl:text>telephone ring</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Helicopter' or @midi.instrnum = '125'">
      <xsl:text>helicopter</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Applause' or @midi.instrnum = '126'">
      <xsl:text>applause</xsl:text>
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Gunshot' or @midi.instrnum = '127'">
      <xsl:text>gunshot</xsl:text>
    </xsl:when>
    <!-- the following percussion sounds are available when channel is set to 10 -->
    <xsl:when test="@midi.instrname = 'Acoustic_Bass_Drum'">
      <!-- Key #35. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Bass_Drum_1'">
      <!-- Key #36. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Side_Stick'">
      <!-- Key #37. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Acoustic_Snare'">
      <!-- Key #38. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Hand_Clap'">
      <!-- Key #39. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Electric_Snare'">
      <!-- Key #40. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Floor_Tom'">
      <!-- Key #41. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Closed_Hi_Hat'">
      <!-- Key #42. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'High_Floor_Tom'">
      <!-- Key #43. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Pedal_Hi-Hat'">
      <!-- Key #44. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Tom'">
      <!-- Key #45. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Open_Hi-Hat'">
      <!-- Key #46. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low-Mid_Tom'">
      <!-- Key #47. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Hi-Mid_Tom'">
      <!-- Key #48. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Crash_Cymbal_1'">
      <!-- Key #49. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'High_Tom'">
      <!-- Key #50. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Ride_Cymbal_1'">
      <!-- Key #51. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Chinese_Cymbal'">
      <!-- Key #52. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Ride_Bell'">
      <!-- Key #53. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Tambourine'">
      <!-- Key #54. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Splash_Cymbal'">
      <!-- Key #55. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Cowbell'">
      <!-- Key #56. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Crash_Cymbal_2'">
      <!-- Key #57. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Vibraslap'">
      <!-- Key #58. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Ride_Cymbal_2'">
      <!-- Key #59. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Hi_Bongo'">
      <!-- Key #60. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Bongo'">
      <!-- Key #61. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Mute_Hi_Conga'">
      <!-- Key #62. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Open_Hi_Conga'">
      <!-- Key #63. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Conga'">
      <!-- Key #64. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'High_Timbale'">
      <!-- Key #65. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Timbale'">
      <!-- Key #66. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'High_Agogo'">
      <!-- Key #67. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Agogo'">
      <!-- Key #68. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Cabasa'">
      <!-- Key #69. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Maracas'">
      <!-- Key #70. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Short_Whistle'">
      <!-- Key #71. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Long_Whistle'">
      <!-- Key #72. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Short_Guiro'">
      <!-- Key #73. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Long_Guiro'">
      <!-- Key #74. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Claves'">
      <!-- Key #75. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Hi_Wood_Block'">
      <!-- Key #76. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Low_Wood_Block'">
      <!-- Key #77. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Mute_Cuica'">
      <!-- Key #78. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Open_Cuica'">
      <!-- Key #79. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Mute_Triangle'">
      <!-- Key #80. -->
    </xsl:when>
    <xsl:when test="@midi.instrname = 'Open_Triangle'">
      <!-- Key #81. -->
    </xsl:when>
  </xsl:choose>
  <xsl:text>&quot;&#10;</xsl:text>
</xsl:template>
</xsl:stylesheet>
