.class public abstract Lcom/nianticproject/ingress/NemesisBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/j/c;
.implements Lcom/nianticproject/ingress/service/i;
.implements Lcom/nianticproject/ingress/ui/d;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/w/aa;

.field protected b:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisBaseActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 64
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 255
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p3, p0}, Lcom/nianticproject/ingress/j/a;->a(Landroid/support/v4/app/j;Ljava/lang/String;Lcom/nianticproject/ingress/j/c;)V

    .line 268
    return-void
.end method

.method public final a(ILcom/nianticproject/ingress/shared/rpc/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 184
    return-void
.end method

.method public final a(JLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/google/a/d/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/q;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Did you forget to override onNudgePlayer?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 263
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Did you forget to override onViewPlayerProfile?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    invoke-static {p3}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisBaseActivity;->b:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisBaseActivity;->b:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->finish()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Lcom/nianticproject/ingress/service/i;)V

    .line 116
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 117
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->f(Landroid/content/Context;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisBaseActivity;->b:Landroid/accounts/Account;

    .line 105
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisBaseActivity;->b:Landroid/accounts/Account;

    .line 100
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Lcom/nianticproject/ingress/service/i;)V

    goto :goto_0
.end method
