module EratosteneSieve
  class Railtie < Rails::Railtie
    initializer 'eratostene_sieve.configure_rails_initialization' do
      ActiveSupport.on_load :active_record do
        extend EratosteneSieve
      end
    end
  end
end