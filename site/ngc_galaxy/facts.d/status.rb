Facter.add('status') do
  setcode do
    Facter::Core::Execution.execute('if (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property "LicenseStatus = 1") {exit 1}')
  end 
end
