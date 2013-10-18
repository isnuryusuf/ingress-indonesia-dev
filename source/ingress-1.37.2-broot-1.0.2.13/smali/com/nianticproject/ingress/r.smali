.class final Lcom/nianticproject/ingress/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->g(Lcom/nianticproject/ingress/AndroidComm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    const-string/jumbo v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->h(Lcom/nianticproject/ingress/AndroidComm;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 328
    :goto_1
    iget-object v3, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 329
    iget-object v0, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->c()V

    .line 330
    iget-object v0, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->g(Lcom/nianticproject/ingress/AndroidComm;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 335
    iget-object v2, p0, Lcom/nianticproject/ingress/r;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v2}, Lcom/nianticproject/ingress/AndroidComm;->g(Lcom/nianticproject/ingress/AndroidComm;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 337
    const-string/jumbo v0, "Comm"

    const-string/jumbo v1, "send"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 327
    goto :goto_1
.end method
