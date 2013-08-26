ActiveAdmin.register Prueba do
 
      form do |f|
      f.inputs "Detailsxds" do
        f.input :titulo
        f.input :texto, :as=>:ckeditor
      end
      f.actions
    end

end
