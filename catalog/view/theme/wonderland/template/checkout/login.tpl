<div>
    <input class="btn btn-default btn-lg" data-toggle="modal"  data-target="#login-form" type="button" value="LOGIN TO ACCOUNT">
</div>

<!--  Login Modal -->
<div class="modal fade" id="login-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

        </div>

        <div class="modal-body">
            <div class="row">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                <input class="form-control col-sm-10" type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" />
            </div>


            <div class="row">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                <input class="form-control col-sm-10" type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" />
                <div class="forget-password"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
            </div>

            <input type="button" value="<?php echo $button_login; ?>" id="button-login" data-loading-text="<?php //echo $text_loading; ?>" class="btn btn-primary" />
        </div>
    </div>
</div>
