.class public Lcom/nianticproject/ingress/ReportInvalidPortalActivity;
.super Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->b:Landroid/accounts/Account;

    invoke-static {p0, v1, v0, v2}, Lcom/nianticproject/ingress/curation/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Lcom/nianticproject/ingress/curation/c;

    move-result-object v1

    const-string/jumbo v2, "PortalTakedownRequest"

    const-string/jumbo v3, "submit"

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "PortalTakedownRequest"

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->a(Lcom/nianticproject/ingress/curation/c;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Nothing to submit, ignoring."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Nothing to submit, ignoring."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f080072 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->finish()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 147
    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->e:Landroid/widget/Button;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    :goto_1
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "ReportInvalidPortalActivity"

    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->d:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->e:Landroid/widget/Button;

    .line 56
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    const v1, 0x7f08006c

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->f:Landroid/widget/RadioGroup;

    .line 59
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g:Landroid/widget/RadioButton;

    .line 60
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g:Landroid/widget/RadioButton;

    new-instance v2, Lcom/nianticproject/ingress/ds;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/ds;-><init>(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v1, p0, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->e:Landroid/widget/Button;

    new-instance v2, Lcom/nianticproject/ingress/dt;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/dt;-><init>(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v1, Lcom/nianticproject/ingress/du;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/du;-><init>(Lcom/nianticproject/ingress/ReportInvalidPortalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g()V

    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/nianticproject/ingress/ReportInvalidPortalActivity;->g()V

    .line 140
    return-void
.end method
