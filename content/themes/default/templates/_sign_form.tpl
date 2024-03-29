<div class="card card-register">

  <!-- signin -->
  <div class="js_panel {if $do == 'up'}x-hidden{/if}">
    <div class="card-header">
      <h4 class="card-title">{__("Sign In to your Account")}</h4>
      <p>{__("Welcome back! please enter your detail")}</p>
    </div>
    <div class="card-body pt0">
      {if isset($highlight)}<div class="alert alert-warning">{$highlight}</div>{/if}
      <form class="js_ajax-forms" data-url="core/signin.php" method="POST">
        <!-- username or email -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-envelope fa-fw"></i></span>
            <input type="text" class="form-control" placeholder='{__("Email")} {__("or")} {__("Username")}' name="username_email" required>
          </div>
        </div>
        <!-- username or email -->
        <!-- password -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-lock fa-fw"></i></span>
            <input type="password" class="form-control" placeholder='{__("Password")}' name="password" required>
          </div>
        </div>
        <!-- password -->
        <!-- remember me -->
        <div class="row">
          <div class="col-12 col-lg-6 mb10">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="remember" id="remember">
              <label class="form-check-label" for="remember">{__("Remember me")}</label>
            </div>
          </div>
          <div class="col-12 col-lg-6 mb10">
            <a class="float-end" href="{$system['system_url']}/reset">{__("Forgotten password?")}</a>
          </div>
        </div>
        <!-- remember me -->
        <!-- submit -->
        <div class="form-group d-grid">
          <button type="submit" class="btn btn-lg btn-primary">{__("Sign In")}</button>
        </div>
        <!-- submit -->
        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      {if $system['social_login_enabled']}
        {if $system['facebook_login_enabled'] || $system['google_login_enabled'] || $system['twitter_login_enabled'] || $system['linkedin_login_enabled'] || $system['vkontakte_login_enabled'] || $system['wordpress_login_enabled']}
          <div class="hr-heading mt5 mb10">
            <div class="hr-heading-text">
              {__("or")}
            </div>
          </div>
          <div class="text-center">
            {if $system['facebook_login_enabled']}
              <a href="{$system['system_url']}/connect/facebook" class="btn btn-sm btn-rounded btn-social-icon btn-facebook">
                <i class="fab fa-facebook-f"></i>
              </a>
            {/if}
            {if $system['google_login_enabled']}
              <a href="{$system['system_url']}/connect/google" class="btn btn-sm btn-rounded btn-social-icon btn-google">
                <i class="fab fa-google"></i>
              </a>
            {/if}
            {if $system['twitter_login_enabled']}
              <a href="{$system['system_url']}/connect/twitter" class="btn btn-sm btn-rounded btn-social-icon btn-twitter">
                <i class="fab fa-twitter"></i>
              </a>
            {/if}
            {if $system['linkedin_login_enabled']}
              <a href="{$system['system_url']}/connect/linkedin" class="btn btn-sm btn-rounded btn-social-icon btn-linkedin">
                <i class="fab fa-linkedin"></i>
              </a>
            {/if}
            {if $system['vkontakte_login_enabled']}
              <a href="{$system['system_url']}/connect/vkontakte" class="btn btn-sm btn-rounded btn-social-icon btn-vk">
                <i class="fab fa-vk"></i>
              </a>
            {/if}
            {if $system['wordpress_login_enabled']}
              <a href="{$system['system_url']}/connect/wordpress" class="btn btn-sm btn-rounded btn-social-icon btn-wordpress">
                <i class="fab fa-wordpress"></i>
              </a>
            {/if}
            {if $system['sngine_login_enabled']}
              <a href="https://{$system['sngine_app_domain']}/api/oauth?app_id={$system['sngine_appid']}" class="btn btn-sm btn-rounded btn-social-icon">
                <img src="{$system['system_uploads']}/{$system['sngine_app_icon']}" width="30" height="30" alt="{__({$system['sngine_app_name']})}">
              </a>
            {/if}
          </div>
        {/if}
      {/if}
      {if $system['registration_enabled']}
        <div class="mt30 text-center">
          {__("Don’t have an account?")} <a href="{$system['system_url']}/signup" class="js_toggle-panel text-link">{__("Sign Up")}</a>
        </div>
      {/if}
    </div>
  </div>
  <!-- signin -->

  <!-- signup -->
  <div class="js_panel {if $do != 'up'}x-hidden{/if}">
    <div class="card-header">
      <h4 class="card-title">{__("Sign Up for an Account")}</h4>
    </div>
    <div class="card-body pt0">
      <form class="js_ajax-forms" data-url="core/signup.php" method="POST">
        {if $system['invitation_enabled']}
          <!-- invitation code -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-text bg-transparent"><i class="fas fa-handshake fa-fw"></i></span>
              <input name="invitation_code" type="text" class="form-control" placeholder='{__("Invitation Code")}' value="{$invitation_code}" required>
            </div>
          </div>
          <!-- invitation code -->
        {/if}
        <!-- first name -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-user fa-fw"></i></span>
            <input name="first_name" type="text" class="form-control" placeholder='{__("First name")}' required>
          </div>
        </div>
        <!-- first name -->
        <!-- last name -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-user fa-fw"></i></span>
            <input name="last_name" type="text" class="form-control" placeholder='{__("Last name")}' required>
          </div>
        </div>
        <!-- last name -->
        <!-- username -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-globe fa-fw"></i></span>
            <input name="username" type="text" class="form-control" placeholder='{__("Username")}' required>
          </div>
        </div>
        <!-- username -->
        <!-- email -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-text bg-transparent"><i class="fas fa-envelope fa-fw"></i></span>
            <input name="email" type="email" class="form-control" placeholder='{__("Email")}' required>
          </div>
        </div>
        <!-- email -->
        {if $system['activation_enabled'] && $system['activation_type'] == "sms"}
          <!-- phone -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-text bg-transparent"><i class="fas fa-phone fa-fw"></i></span>
              <input name="phone" type="text" class="form-control" placeholder='{__("Phone number (e.g: +1234567890)")}' required>
            </div>
          </div>
          <!-- phone -->
        {/if}
        <!-- password -->
        <div class="form-group">
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-text bg-transparent"><i class="fas fa-key fa-fw"></i></span>
              <input name="password" type="password" class="form-control" placeholder='{__("Password")}' required>
            </div>
          </div>
        </div>
        <!-- password -->
        <!-- custom fields -->
        {if $custom_fields}
          {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
        {/if}
        <!-- custom fields -->
        <div class="js_hidden-section x-hidden">
          {if !$system['genders_disabled']}
            <!-- genders -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-text bg-transparent"><i class="fas fa-venus-mars fa-fw"></i></span>
                <select class="form-select" name="gender" id="gender" required>
                  <option value="none">{__("Select Sex")}:</option>
                  {foreach $genders as $gender}
                    <option value="{$gender['gender_id']}">{$gender['gender_name']}</option>
                  {/foreach}
                </select>
              </div>
            </div>
            <!-- genders -->
          {/if}
          {if $system['age_restriction']}
            <!-- birthdate -->
            <div class="form-group">
              <label class="form-label">{__("Birthdate")}</label>
              <div class="row">
                <div class="col">
                  <select class="form-select" name="birth_month">
                    <option value="none">{__("Month")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '1'}selected{/if} value="1">{__("Jan")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '2'}selected{/if} value="2">{__("Feb")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '3'}selected{/if} value="3">{__("Mar")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '4'}selected{/if} value="4">{__("Apr")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '5'}selected{/if} value="5">{__("May")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '6'}selected{/if} value="6">{__("Jun")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '7'}selected{/if} value="7">{__("Jul")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '8'}selected{/if} value="8">{__("Aug")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '9'}selected{/if} value="9">{__("Sep")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '10'}selected{/if} value="10">{__("Oct")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '11'}selected{/if} value="11">{__("Nov")}</option>
                    <option {if $user->_data['user_birthdate_parsed']['month'] == '12'}selected{/if} value="12">{__("Dec")}</option>
                  </select>
                </div>
                <div class="col">
                  <select class="form-select" name="birth_day">
                    <option value="none">{__("Day")}</option>
                    {for $i=1 to 31}
                      <option {if $user->_data['user_birthdate_parsed']['day'] == $i}selected{/if} value="{$i}">{$i}</option>
                    {/for}
                  </select>
                </div>
                <div class="col">
                  <select class="form-select" name="birth_year">
                    <option value="none">{__("Year")}</option>
                    {for $i=1905 to 2023}
                      <option {if $user->_data['user_birthdate_parsed']['year'] == $i}selected{/if} value="{$i}">{$i}</option>
                    {/for}
                  </select>
                </div>
              </div>
            </div>
            <!-- birthdate -->
          {/if}
          {if $system['reCAPTCHA_enabled']}
            <div class="form-group">
              <!-- reCAPTCHA -->
              <script src='https://www.google.com/recaptcha/api.js' async defer></script>
              <div class="g-recaptcha" data-sitekey="{$system['reCAPTCHA_site_key']}"></div>
              <!-- reCAPTCHA -->
            </div>
          {/if}
          {* Honeypot *}
          <input type="text" name="field1" style="display:none !important" tabindex="-1" autocomplete="off">
          {* Honeypot *}
          {if $system['newsletter_consent']}
            <!-- newsletter consent -->
            <div class="form-check mb10">
              <input type="checkbox" class="form-check-input" name="newsletter_agree" id="newsletter_agree">
              <label class="form-check-label" for="newsletter_agree">
                {__("I expressly agree to receive the newsletter")}
              </label>
            </div>
            <!-- newsletter consent -->
          {/if}
          <!-- privacy & terms consent -->
          <div class="form-check mb10">
            <input type="checkbox" class="form-check-input" name="privacy_agree" id="privacy_agree">
            <label class="form-check-label" for="privacy_agree">
              {__("By creating your account, you agree to our")} <a href="{$system['system_url']}/static/terms" target="_blank">{__("Terms")}</a> & <a href="{$system['system_url']}/static/privacy" target="_blank">{__("Privacy Policy")}</a>
            </label>
          </div>
          <!-- privacy & terms consent -->
        </div>
        <!-- submit -->
        <div class="form-group d-grid">
          <button type="submit" class="btn btn-lg btn-primary">{__("Sign Up")}</button>
        </div>
        <!-- submit -->
        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      {if $system['social_login_enabled']}
        {if $system['facebook_login_enabled'] || $system['google_login_enabled'] || $system['twitter_login_enabled'] || $system['linkedin_login_enabled'] || $system['vkontakte_login_enabled'] || $system['wordpress_login_enabled']}
          <div class="hr-heading mt5 mb10">
            <div class="hr-heading-text">
              {__("or")}
            </div>
          </div>
          <div class="text-center">
            {if $system['facebook_login_enabled']}
              <a href="{$system['system_url']}/connect/facebook" class="btn btn-sm btn-rounded btn-social-icon btn-facebook">
                <i class="fab fa-facebook-f"></i>
              </a>
            {/if}
            {if $system['google_login_enabled']}
              <a href="{$system['system_url']}/connect/google" class="btn btn-sm btn-rounded btn-social-icon btn-google">
                <i class="fab fa-google"></i>
              </a>
            {/if}
            {if $system['twitter_login_enabled']}
              <a href="{$system['system_url']}/connect/twitter" class="btn btn-sm btn-rounded btn-social-icon btn-twitter">
                <i class="fab fa-twitter"></i>
              </a>
            {/if}
            {if $system['linkedin_login_enabled']}
              <a href="{$system['system_url']}/connect/linkedin" class="btn btn-sm btn-rounded btn-social-icon btn-linkedin">
                <i class="fab fa-linkedin"></i>
              </a>
            {/if}
            {if $system['vkontakte_login_enabled']}
              <a href="{$system['system_url']}/connect/vkontakte" class="btn btn-sm btn-rounded btn-social-icon btn-vk">
                <i class="fab fa-vk"></i>
              </a>
            {/if}
            {if $system['wordpress_login_enabled']}
              <a href="{$system['system_url']}/connect/wordpress" class="btn btn-sm btn-rounded btn-social-icon btn-wordpress">
                <i class="fab fa-wordpress"></i>
              </a>
            {/if}
            {if $system['sngine_login_enabled']}
              <a href="https://{$system['sngine_app_domain']}/api/oauth?app_id={$system['sngine_appid']}" class="btn btn-sm btn-rounded btn-social-icon">
                <img src="{$system['system_uploads']}/{$system['sngine_app_icon']}" width="30" height="30" alt="{__({$system['sngine_app_name']})}">
              </a>
            {/if}
          </div>
        {/if}
      {/if}
      <div class="mt20 text-center">
        {__("Already have an account?")} <a href="{$system['system_url']}/signin" class="js_toggle-panel text-link">{__("Sign In")}</a>
      </div>
    </div>
  </div>
  <!-- signup -->
</div>