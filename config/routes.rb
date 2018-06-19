Rails.application.routes.draw do
  resources :universes , shallow: true do
    resources :superclusters , shallow: true do
      resources :galaxies , shallow: true do
        resources :stars , shallow: true do
          resources :planets , shallow: true do
            resources :countries , shallow: true do
              resources :companies , shallow: true do
                resources :departments , shallow: true do
                  resources :members , shallow: true do
                    resources :parts , shallow: true do
                      resources :protains , shallow: true do
                        resources :molecules , shallow: true do
                          resources :atoms , shallow: true do
                            resources :elements
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

