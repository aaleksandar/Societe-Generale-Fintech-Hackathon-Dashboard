ActiveAdmin.register Loan do
  permit_params :user_id,
    :loan_type,
    :purchase_date,
    :status,
    :amount,
    :repayment,
    :interest_rate,
    :administrative_cost
end
