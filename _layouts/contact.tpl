---
layout: inner_system 
---

<div class="section contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-xs-12 card-container card-with-icon-container mobile-full-card-container">
                <div class="card-box card-with-icon mobile-full-card">
                    <div class="card-icon-container">
                        <img class="card-icon" src="{{page.contactUsCard_list[0].img_txt}}" role="presentation" alt="Icon Contact" />
                    </div>
                    <div class="card-box-content">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 col-xs-12">
                                <p class="text-center">
                                     {{page.contactUsCard_list[0].content_txt }}
                                </p>
                            </div>
                        </div>

                        <div class="row dotted-border-top dotted-border-bottom contact-row">
                            <div class="col-lg-3 col-md-5 col-sm-4 col-xs-12 no-padding-left">
                                <h2 class="contact-box-label">{{ page.contactUsCard_list[0].emailLabel_txt }}</h2>
                            </div>
                            <div class="col-lg-9 col-md-7 col-sm-8 col-xs-12 contact-email-container">
                                <a href="mailto:{{page.contactUsCard_list[0].emailAddress_txt}}" class="btn btn-primary arrow-right-white contact-email-address-btn">{{page.contactUsCard_list[0].emailAddress_txt}}</a>
                            </div>
                        </div>
                        <div class="row contact-row">
                            <div class="col-lg-3 col-xs-12 no-padding-left">
                                <h2 class="contact-box-label">{{ page.contactUsCard_list[0].messageLabel_txt }}</h2>
                            </div>
                            <div class="col-lg-9 col-xs-12 contact-form">

                                <div class="app-forms-embed" data-formid="5af0765b29c0a500a363c92a" data-lang="en"></div>

                                <!-- <iframe> -->
                                <!-- <div class="wfui-loading-component">
                                    <div id="oicr-forms-form">
                                        <div>
                                            <div class="col-sm-12 application-title">
                                                <h2>Contact Form</h2>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="wfui-notification">
                                                <div class="wfui-notification-static">
                                                    <span></span>
                                                </div>
                                            </div>
                                            <div class="application-app single-section">
                                                <div class="notifications-wrapper"></div>
                                                <div class="container">
                                                    <div class="application-main section-0">
                                                        <div class="row">
                                                            <div class="default_slide">
                                                                <div>
                                                                    <div class="form active">
                                                                        <div class="survey-question">
                                                                            <h3 class="title">test</h3>
                                                                            <div>
                                                                                <div class="fields">
                                                                                    <div class="wfui-type-input-field ">
                                                                                        <div class="wfui-form-item wfui-form-inline">
                                                                                            <div class="wfui-form-label">
                                                                                                <label class="control-label">First Name:</label>
                                                                                            </div>
                                                                                            <div class="wfui-form-field wfui-form-field-no-desctipton wfui-form-input form-group has-feedback">
                                                                                                <input type="text" name="firstName" value="" placeholder="" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="fields">
                                                                                    <div class="wfui-type-input-field ">
                                                                                        <div class="wfui-form-item wfui-form-inline">
                                                                                            <div class="wfui-form-label">
                                                                                                <label class="control-label">Last Name:</label>
                                                                                            </div>
                                                                                            <div class="wfui-form-field wfui-form-field-no-desctipton wfui-form-input form-group has-feedback">
                                                                                                <input type="text" name="lastName" value="" placeholder="" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="fields">
                                                                                    <div class="wfui-type-input-field ">
                                                                                        <div class="wfui-form-item wfui-form-inline">
                                                                                            <div class="wfui-form-label">
                                                                                                <label class="control-label">Email Address:</label>
                                                                                            </div>
                                                                                            <div class="wfui-form-field wfui-form-field-no-desctipton wfui-form-input form-group has-feedback">
                                                                                                <input type="email" name="email" value="" placeholder="" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="fields">
                                                                                    <div class="wfui-type-listbox ">
                                                                                        <div class="wfui-form-item">
                                                                                            <div class="wfui-form-label">
                                                                                                <label class="control-label">Subject:</label>
                                                                                            </div>
                                                                                            <div class="wfui-form-field wfui-form-field-no-desctipton wfui-form-select form-group">
                                                                                                <select name="subject" class="form-control">
                                                                                                        <option name="subject" value="">--Select an option--</option>
                                                                                                        <option name="subject" value="General Inquires">General Inquires</option>
                                                                                                        <option name="subject" value="Partnerships">Partnerships</option>
                                                                                                        <option name="subject" value="Portal Inquires">Portal Inquires</option>
                                                                                                        <option name="subject" value="Media Inquires">Media Inquires</option>
                                                                                                        <option name="subject" value="Other">Other</option>
                                                                                                    </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="fields">
                                                                                    <div class="wfui-type-textarea ">
                                                                                        <div class="wfui-form-item">
                                                                                            <div class="wfui-form-label">
                                                                                                <label class="control-label">Questions/Comments:</label>
                                                                                            </div>
                                                                                            <div class="wfui-form-field wfui-form-field-no-desctipton wfui-form-textarea form-group has-feedback">
                                                                                                <textarea name="q-bcb5deb0-470e-11e8-896a-7b5717bfc3f4.value" placeholder="" rows="5" type="textarea" class="form-control"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                        <div class="survey-end-container">
                                                                            <div>
                                                                                <div id="greptcha-insert"></div>
                                                                                <button id="0" type="button" class="btn btn-primary">
                                                                                        <span class="button-survey-text">Submit</span>
                                                                                    </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <!-- </iframe> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>