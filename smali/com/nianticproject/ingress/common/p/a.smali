.class public final Lcom/nianticproject/ingress/common/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/knobs/b;


# direct methods
.method public static a()Lcom/nianticproject/ingress/knobs/b;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/nianticproject/ingress/common/p/a;->a:Lcom/nianticproject/ingress/knobs/b;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VersionProvider not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/p/a;->a:Lcom/nianticproject/ingress/knobs/b;

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/knobs/b;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/p/a;->a:Lcom/nianticproject/ingress/knobs/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempting to initialize VersionProvider twice."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 26
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/b;

    sput-object v0, Lcom/nianticproject/ingress/common/p/a;->a:Lcom/nianticproject/ingress/knobs/b;

    .line 27
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
