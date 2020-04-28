<p class="NewUsers-title">Welcome new user!</p>

<section class="UsersNew">
  <%= form_with url: users_path do |form| %>
    <div class="Form-section">
      <p class="FormInput-label">First name:</p>
      <%= form.text_field :first_name, class: "Form-input" %>
    </div>
    <div class="Form-section">
      <p class="FormInput-label">Last name:</p>
      <%= form.text_field :last_name, class: "Form-input" %>
    </div>
    <div class="Form-section">
      <p class="FormInput-label">email name:</p>
      <%= form.email_field :email, class: "Form-input" %>
    </div>
    <div class="Form-section">
      <p class="FormInput-label">password:</p>
      <%= form.password_field :password, class: "Form-input" %>
    </div>
    <div class="Form-section">
      <%= form.submit "Sign-up!", class: "Form-submit" %>
    </div>
  <%end%>
</section>
