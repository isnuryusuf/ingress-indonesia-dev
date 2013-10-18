.class public Lcom/nianticproject/ingress/common/u/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/u;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/b;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

.field private final f:Lcom/nianticproject/ingress/shared/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/az;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/az;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/az;->b:Lcom/nianticproject/ingress/common/u/b;

    .line 42
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/az;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/az;->d:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/nianticproject/ingress/common/u/az;->e:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    .line 45
    iput-object p5, p0, Lcom/nianticproject/ingress/common/u/az;->f:Lcom/nianticproject/ingress/shared/a/b;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 53
    :try_start_0
    const-string/jumbo v0, "HandshakePerformer.performHandshake"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 54
    new-instance v8, Lcom/nianticproject/ingress/common/u/z;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/az;->b:Lcom/nianticproject/ingress/common/u/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/az;->c:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Lcom/nianticproject/ingress/common/u/z;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "2013-10-07T21:02:13Z a7cb9f5402e7 opt"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/az;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/az;->e:Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/u/az;->f:Lcom/nianticproject/ingress/shared/a/b;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/u/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)Lcom/nianticproject/ingress/common/u/w;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nianticproject/ingress/common/u/z;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 62
    sget-object v1, Lcom/nianticproject/ingress/common/u/az;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "performHandshake: %dms"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 62
    sget-object v1, Lcom/nianticproject/ingress/common/u/az;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "performHandshake: %dms"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
