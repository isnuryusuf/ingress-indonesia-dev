.class public final Lcom/nianticproject/ingress/n/y;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/nianticproject/ingress/n/y;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/y;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string/jumbo v2, "error_message_text"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v2, "retry_button_text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/y;->e(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const v0, 0x7f030023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    const v1, 0x1020019

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/y;->h()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "error_message_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/y;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "retry_button_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object v2
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "SignOnErrorFragment"

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/y;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->c()V

    .line 53
    return-void
.end method
