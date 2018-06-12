Rails.application.routes.draw do
  resources :universes do
    resources :superclusters do
      resources :galaxies do
        resources :stars do
          resources :planets do
            resources :countries do
              resources :companies do
                resources :departments do
                  resources :members do
                    resources :parts do
                      resources :protains do
                        resources :molecules do
                          resources :atoms do
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

