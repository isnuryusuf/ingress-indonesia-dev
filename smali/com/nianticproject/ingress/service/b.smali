.class public Lcom/nianticproject/ingress/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/service/b;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/u;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/service/b;->b:Lcom/nianticproject/ingress/common/u/u;

    .line 71
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;)Lcom/nianticproject/ingress/shared/Result;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/service/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 149
    sget-object v0, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "...handshake succeeded"

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->a()Lcom/nianticproject/ingress/shared/PregameStatus;

    move-result-object v4

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ServerHandshake received."

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, " Pregame: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->f()Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/q;->a(Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;)V

    .line 159
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->b()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    :try_start_1
    const-string/jumbo v0, "HandshakeHelper.processPlayerFields"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;

    invoke-interface {v6, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getAllowNicknameEdit()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(Ljava/lang/String;)V

    :goto_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;

    invoke-interface {v6, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;)V

    const-string/jumbo v6, ", Nickname: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", allowNicknameEdit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", factionChoiceHint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;->getTeamHint()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 161
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->d()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->c(Ljava/lang/String;)V

    .line 169
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/service/d;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->b()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->e()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/nianticproject/ingress/service/d;-><init>(Lcom/nianticproject/ingress/shared/PregameStatus;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 175
    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "handleSuccess: %sms"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 159
    :cond_2
    :try_start_3
    invoke-static {v7}, Lcom/nianticproject/ingress/common/s/c;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "handleSuccess: %sms"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 159
    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/Result;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/service/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    :try_start_0
    const-string/jumbo v2, "HandshakeHelper.runHandshake"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 88
    sget-object v2, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Performing handshake..."

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/nianticproject/ingress/service/b;->b:Lcom/nianticproject/ingress/common/u/u;

    invoke-interface {v2, p1, p2}, Lcom/nianticproject/ingress/common/u/u;->a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->a()Lcom/nianticproject/ingress/shared/PregameStatus;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    .line 99
    invoke-static {v2}, Lcom/nianticproject/ingress/service/b;->a(Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nianticproject/ingress/common/u/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_1
    return-object v0

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Pregame status has null action"

    invoke-virtual {v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/common/u/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "...handshake failed: unauthenticated"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/common/a/b;->f:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "AppEngineUnauthenticatedException"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 98
    :cond_1
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/service/c;->a:[I

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->d(Z)V

    :goto_2
    move v0, v1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->d(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/nianticproject/ingress/common/u/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/y;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "...handshake failed: unable to parse handshake"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/common/a/b;->f:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "JsonProcessingException"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V

    new-instance v0, Lcom/nianticproject/ingress/shared/PregameStatus;

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->b:Lcom/nianticproject/ingress/shared/y;

    const-string/jumbo v2, "There was an error while trying to talk with the server. It is possible that upgrading your scanner will fix the problem."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/PregameStatus;-><init>(Lcom/nianticproject/ingress/shared/y;Ljava/lang/String;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;)V

    new-instance v1, Lcom/nianticproject/ingress/service/d;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nianticproject/ingress/service/d;-><init>(Lcom/nianticproject/ingress/shared/PregameStatus;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 101
    :cond_2
    :try_start_5
    sget-object v0, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Received null ServerHandshake from server"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/nianticproject/ingress/common/u/a; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_1

    .line 111
    :cond_3
    :try_start_6
    sget-object v1, Lcom/nianticproject/ingress/service/b;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "...handshake failed"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/common/a/b;->f:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v1, "RpcException"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
