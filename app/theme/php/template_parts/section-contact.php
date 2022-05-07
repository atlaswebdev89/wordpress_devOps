 <div class="container container_bigger">
          <div class="row justify-content-md-center justify-content-xl-between row-2-columns-bordered row-50">
            <div class="col-md-10 col-lg-5 wow-outer">
              <div class="wow slideInLeft">
                <h3>Связаться с нами</h3>
                <ul class="list-creative">
                    <li>
                    <dl class="list-terms-medium">
                      <dt>О фирме</dt>
                      <dd><a href="#"><?php echo get_option ('_crb_about_comp');?></a></dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-medium list-terms-medium_secondary">
                      <dt>Адрес фирмы</dt>
                      <dd><a href="#"><?php echo get_option ('_crb_address_comp');?></a></dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-medium">
                      <dt>Телефоны (viber, whatsapp, telegram)</dt>
                      <dd>
                        <ul class="list-comma">
                          <li><a href="tel:<?php echo get_option ('_crb_phone_1');?>"><?php echo get_option ('_crb_phone_1');?></a></li>
                          <li><a href="tel:<?php echo get_option ('_crb_phone_2');?>"><?php echo get_option ('_crb_phone_2');?></a></li>
                        </ul>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-medium list-terms-medium_tertiary"> 
                      <dt>E-mails</dt>
                      <dd>
                        <ul class="list-comma">
                          <li><a href="mailto:<?php echo get_option ('_crb_email_main');?>"><?php echo get_option ('_crb_email_main');?></a></li>
                        </ul>
                      </dd>
                    </dl>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-10 col-lg-7 col-xl-6 wow-outer">
              <div class="wow slideInRight">
                <h3 class="text-center">Остались вопросы? Напишите нам!</h3>
                <!-- RD Mailform-->
                <?php echo do_shortcode('[contact-form-7 id="110" title="Contact-main-page"]');?>
              </div>
            </div>
          </div>
</div>