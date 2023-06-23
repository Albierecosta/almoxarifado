module ModalHelper
    def confirmation_modal(&block)
      content_tag(:div, class: 'modal fade', id: 'confirmationModal', tabindex: '-1', role: 'dialog', aria: { labelledby: 'confirmationModalLabel', hidden: true }) do
        content_tag(:div, class: 'modal-dialog', role: 'document') do
          content_tag(:div, class: 'modal-content') do
            concat(content_tag(:div, class: 'modal-header') do
              concat(content_tag(:h5, 'Confirmação', class: 'modal-title', id: 'confirmationModalLabel'))
              concat(content_tag(:button, '×', type: 'button', class: 'close', data: { dismiss: 'modal' }, aria: { label: 'Fechar' }))
            end)
            concat(content_tag(:div, class: 'modal-body') do
              concat(content_tag(:p, 'Você tem certeza que deseja prosseguir com esta ação?'))
            end)
            concat(content_tag(:div, class: 'modal-footer') do
              concat(content_tag(:button, 'Cancelar', type: 'button', class: 'btn btn-secondary', data: { dismiss: 'modal' }))
              concat(capture(&block))
            end)
          end
        end
      end
    end
  end
  