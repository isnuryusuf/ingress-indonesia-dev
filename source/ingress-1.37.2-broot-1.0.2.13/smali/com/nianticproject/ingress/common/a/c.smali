.class public final Lcom/nianticproject/ingress/common/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/common/a/d;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nianticproject/ingress/common/a/c;->b:J

    return-void
.end method

.method static a()Lcom/nianticproject/ingress/common/a/d;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/nianticproject/ingress/common/a/c;->a:Lcom/nianticproject/ingress/common/a/d;

    const-string/jumbo v1, "AnalyticsProvider has not been initialized yet."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a/d;

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/nianticproject/ingress/common/a/c;->a:Lcom/nianticproject/ingress/common/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempt to initialize AnalyticsProvider twice, which is not supported."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a/d;

    sput-object v0, Lcom/nianticproject/ingress/common/a/c;->a:Lcom/nianticproject/ingress/common/a/d;

    .line 21
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->a()Lcom/nianticproject/ingress/common/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/a/d;->b()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/nianticproject/ingress/common/a/c;->b:J

    .line 38
    return-void
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/nianticproject/ingress/common/a/c;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->b()V

    .line 45
    :cond_0
    return-void
.end method
