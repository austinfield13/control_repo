Facter.add(:status) do
  setcode do
    Facter::Core::Execution.execute('Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object LicenseStatus')
  end 
end
