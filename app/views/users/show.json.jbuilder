# app/views/users/show.json.jbuilder
json.extract! @user, :id, :name, :email
json.role @user.role
json.applications @user.job_applications, partial: 'job_applications/application', as: :application
