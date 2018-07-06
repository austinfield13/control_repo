Facter.add('status') do
  setcode do
    Facter::Core::Execution.execute('if (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property "LicenseStatus = 1") {$status = 1} else {$status = 0}')
  end 
end
