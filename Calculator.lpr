<?xml version="1.0" encoding="UTF-8"?>
<CONFIG>
  <ProjectOptions>
    <Version Value="11"/>
    <PathDelim Value="\"/>
    <General>
      <SessionStorage Value="InProjectDir"/>
      <MainUnit Value="0"/>
      <Title Value="Calculator"/>
      <Scaled Value="True"/>
      <ResourceType Value="res"/>
      <UseXPManifest Value="True"/>
      <XPManifest>
        <DpiAware Value="True"/>
        <TextName Value="Calculator"/>
        <TextDesc Value="Basic calculator"/>
      </XPManifest>
      <Icon Value="0"/>
    </General>
    <BuildModes Count="1">
      <Item1 Name="Default" Default="True"/>
    </BuildModes>
    <PublishOptions>
      <Version Value="2"/>
      <UseFileFilters Value="True"/>
    </PublishOptions>
    <RunParams>
      <FormatVersion Value="2"/>
      <Modes Count="0"/>
    </RunParams>
    <RequiredPackages Count="1">
      <Item1>
        <PackageName Value="LCL"/>
      </Item1>
    </RequiredPackages>
    <Units Count="2">
      <Unit0>
        <Filename Value="Calculator.lpr"/>
        <IsPartOfProject Value="True"/>
      </Unit0>
      <Unit1>
        <Filename Value="unit1.pas"/>
        <IsPartOfProject Value="True"/>
        <ComponentName Value="Form1"/>
        <HasResources Value="True"/>
        <ResourceBaseClass Value="Form"/>
        <UnitName Value="Unit1"/>
      </Unit1>
    </Units>
  </ProjectOptions>
  <CompilerOptions>
    <Version Value="11"/>
    <PathDelim Value="\"/>
    <Target>
      <Filename Value="Calculator"/>
    </Target>
    <SearchPaths>
      <IncludeFiles Value="$(ProjOutDir)"/>
      <UnitOutputDirectory Value="lib\$(TargetCPU)-$(TargetOS)"/>
    </SearchPaths>
    <CodeGeneration>
      <SmartLinkUnit Value="True"/>
      <Optimizations>
        <OptimizationLevel Value="4"/>
      </Optimizations>
      <SmallerCode Value="True"/>
    </CodeGeneration>
    <Linking>
      <Debugging>
        <GenerateDebugInfo Value="False"/>
        <StripSymbols Value="True"/>
      </Debugging>
      <Options>
        <Win32>
          <GraphicApplication Value="True"/>
        </Win32>
      </Options>
    </Linking>
  </CompilerOptions>
  <Debugging>
    <Exceptions Count="3">
      <Item1>
        <Name Value="EAbort"/>
      </Item1>
      <Item2>
        <Name Value="ECodetoolError"/>
      </Item2>
      <Item3>
        <Name Value="EFOpenError"/>
      </Item3>
    </Exceptions>
  </Debugging>
</CONFIG>
