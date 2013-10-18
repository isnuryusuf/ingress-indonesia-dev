.class public final Lcom/nianticproject/ingress/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/j/a;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/j/a;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/j/a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/j/a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/j/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->x()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/nianticproject/ingress/j/b;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/j/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/j;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/16 v1, 0x539

    sget-object v2, Lcom/nianticproject/ingress/j/a;->c:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nianticproject/ingress/ui/a;->a(I[Ljava/lang/Object;Landroid/os/Bundle;)Lcom/nianticproject/ingress/ui/a;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "CommNicknameClick"

    invoke-virtual {v0, p0, v1}, Lcom/nianticproject/ingress/ui/a;->a(Landroid/support/v4/app/j;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/support/v4/app/j;Ljava/lang/String;Lcom/nianticproject/ingress/j/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    const-string/jumbo v0, "CommNicknameClick"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/a;

    .line 108
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    sget-object v1, Lcom/nianticproject/ingress/j/a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/j/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v1, Lcom/nianticproject/ingress/j/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/j/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
