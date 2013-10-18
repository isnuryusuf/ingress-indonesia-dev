.class public Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final board:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final bootloader:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final brand:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final device:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final deviceId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final display:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final fingerprint:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final hardware:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final manufacturer:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final model:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final product:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final rooted:Ljava/lang/Boolean;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final tags:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    .line 104
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    .line 125
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    .line 129
    iput-object p6, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    .line 131
    iput-object p8, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    .line 132
    iput-object p9, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 133
    iput-object p10, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    .line 134
    iput-object p11, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    .line 135
    iput-object p12, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    .line 136
    iput-object p13, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    .line 137
    iput-object p14, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    if-ne p0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 286
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    .line 287
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 288
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 289
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 291
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 292
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 293
    :cond_7
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 294
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 295
    :cond_8
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 296
    :cond_9
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 297
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 298
    :cond_a
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 299
    :cond_b
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 300
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 301
    :cond_c
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 302
    :cond_d
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 303
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 304
    :cond_e
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 305
    :cond_f
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 306
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 307
    :cond_10
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 308
    :cond_11
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 309
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    if-eqz v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 310
    :cond_12
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 311
    :cond_13
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 312
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 313
    :cond_14
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 314
    :cond_15
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 315
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    if-eqz v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 316
    :cond_16
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    .line 317
    :cond_17
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 318
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    if-eqz v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 319
    :cond_18
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 320
    :cond_19
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    .line 321
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    if-eqz v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 322
    :cond_1a
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    .line 323
    :cond_1b
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 324
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    if-eqz v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 325
    :cond_1c
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    .line 326
    :cond_1d
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 327
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 328
    :cond_1e
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 265
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 266
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 267
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 268
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 269
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 270
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 271
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 273
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 274
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 275
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 276
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    if-nez v2, :cond_d

    :goto_d
    add-int/2addr v0, v1

    .line 278
    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    .line 274
    :cond_a
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    .line 275
    :cond_b
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_b

    .line 276
    :cond_c
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c

    .line 277
    :cond_d
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfo [rooted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->rooted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", board="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->board:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bootloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->bootloader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
