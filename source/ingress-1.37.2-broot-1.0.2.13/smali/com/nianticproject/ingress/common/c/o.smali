.class public final Lcom/nianticproject/ingress/common/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/common/c/e;


# direct methods
.method public static a()Lcom/nianticproject/ingress/common/c/e;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/c/o;->a:Lcom/nianticproject/ingress/common/c/e;

    const-string/jumbo v1, "AudioProvider has not been initialized yet."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/e;

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/nianticproject/ingress/common/c/o;->a:Lcom/nianticproject/ingress/common/c/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempt to initialize AudioProvider twice, which is not supported."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/common/c/aj;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/c/aj;-><init>(Lcom/nianticproject/ingress/common/c/ai;)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/o;->a:Lcom/nianticproject/ingress/common/c/e;

    .line 19
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
