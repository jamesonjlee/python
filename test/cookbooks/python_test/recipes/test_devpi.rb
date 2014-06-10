include_recipe 'python'

python_pip 'devpi' do
    action :install
end
