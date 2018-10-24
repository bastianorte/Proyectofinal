ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Usuarios" do
          ul do
              li "Usuarios registrados #{User.count}"
          end
        end
      end
      column do
        panel "Ultimas Comidas agregadas" do
          ul do
            Food.last(5).map do |food|
              li link_to(food.name, admin_food_path(food))
            end
          end
        end
      end
    end
      panel "Graficos" do
        render 'shared/chart'
      end

  end
end
