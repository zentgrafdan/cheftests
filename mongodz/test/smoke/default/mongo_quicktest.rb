control 'mongocheck' do
  describe command('mongo --version') do
    its('exit_status') { should eq 0 }
    its('stdout') { should match /3.4.9/ }
  end
end
