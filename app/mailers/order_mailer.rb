class OrderMailer < ApplicationMailer
  default from: 'NgocPH<phamhuungoc050798@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail :to => @order.email, :subject => "We've received your order"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    mail :to => order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
