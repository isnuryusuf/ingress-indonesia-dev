.class public final Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private allowFactionChoice:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private allowNicknameEdit:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private ap:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private clientLevel:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient dirty:Z

.field private energy:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private energyState:Lcom/nianticproject/ingress/shared/f;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private mediaHighWaterMarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    .line 218
    iput v4, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    .line 219
    iput v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->clientLevel:I

    .line 220
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    .line 221
    sget-object v0, Lcom/nianticproject/ingress/shared/f;->b:Lcom/nianticproject/ingress/shared/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energyState:Lcom/nianticproject/ingress/shared/f;

    .line 222
    iput-boolean v4, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    .line 223
    iput-boolean v4, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    .line 224
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 225
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 226
    return-void
.end method

.method public constructor <init>(IJLjava/util/Map;Lcom/nianticproject/ingress/shared/f;ZZLcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nianticproject/ingress/shared/f;",
            "ZZ",
            "Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;",
            "Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-ltz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 111
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 112
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    if-nez p1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/f;->b:Lcom/nianticproject/ingress/shared/f;

    invoke-virtual {p5, v0}, Lcom/nianticproject/ingress/shared/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 116
    invoke-static {p8}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p9}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iput-wide p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    .line 120
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    .line 121
    iput v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->clientLevel:I

    .line 122
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    iput-object p5, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energyState:Lcom/nianticproject/ingress/shared/f;

    .line 125
    iput-boolean p6, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    .line 126
    iput-boolean p7, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    .line 127
    iput-object p8, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 128
    iput-object p9, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 129
    return-void

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    :cond_3
    move v0, v2

    .line 111
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 148
    const-wide/16 v9, 0x0

    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v7

    sget-object v8, Lcom/nianticproject/ingress/shared/f;->c:Lcom/nianticproject/ingress/shared/f;

    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    new-instance v12, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-direct {v12, v1}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;-><init>(Z)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, v9

    move v9, v1

    move v10, v1

    move-object v11, v0

    invoke-direct/range {v2 .. v12}, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;-><init>(Ljava/lang/String;IJLjava/util/Map;Lcom/nianticproject/ingress/shared/f;ZZLcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLcom/nianticproject/ingress/shared/f;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v6

    const/4 v9, 0x1

    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;-><init>(ZZZZZ)V

    new-instance v11, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;-><init>(Z)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v10, v0

    invoke-direct/range {v1 .. v11}, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;-><init>(Ljava/lang/String;IJLjava/util/Map;Lcom/nianticproject/ingress/shared/f;ZZLcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/util/Map;Lcom/nianticproject/ingress/shared/f;ZZLcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nianticproject/ingress/shared/f;",
            "ZZ",
            "Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;",
            "Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;-><init>(IJLjava/util/Map;Lcom/nianticproject/ingress/shared/f;ZZLcom/nianticproject/ingress/shared/rpc/NotificationSettings;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V

    .line 102
    return-void
.end method


# virtual methods
.method public final getAllowNicknameEdit()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    return v0
.end method

.method public final getAllowedFactionChoice()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    return v0
.end method

.method public final getAp()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    return-wide v0
.end method

.method public final getClientLevel()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->clientLevel:I

    return v0
.end method

.method public final getEnergyForRead()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    return v0
.end method

.method public final getEnergyState()Lcom/nianticproject/ingress/shared/f;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energyState:Lcom/nianticproject/ingress/shared/f;

    return-object v0
.end method

.method public final getMediaHighWaterMark(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaHighWaterMarks()Lcom/google/a/c/dh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/a/c/di;->a(Ljava/util/Map;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method public final getNotificationSettings()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    return-object v0
.end method

.method public final getProfileSettings()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    return-object v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    return v0
.end method

.method public final setAllowNicknameEdit(Z)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    if-eq v0, p1, :cond_0

    .line 287
    iput-boolean p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 290
    :cond_0
    return-void
.end method

.method public final setAllowedFactionChoice(Z)V
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    if-eq v0, p1, :cond_0

    .line 300
    iput-boolean p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 303
    :cond_0
    return-void
.end method

.method public final setAp(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 156
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 157
    iget-wide v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 158
    iput-wide p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    .line 159
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 161
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 196
    return-void
.end method

.method public final setClientLevel(I)V
    .locals 1
    .parameter

    .prologue
    .line 165
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 166
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->clientLevel:I

    .line 175
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEnergyOnlyForPlayerService(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 235
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 236
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    .line 238
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEnergyStateOnlyForPlayerService(Lcom/nianticproject/ingress/shared/f;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energyState:Lcom/nianticproject/ingress/shared/f;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/shared/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energyState:Lcom/nianticproject/ingress/shared/f;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 277
    :cond_0
    return-void
.end method

.method public final setMediaHighWaterMark(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 249
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 252
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMediaHighWaterMarks(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 264
    return-void
.end method

.method public final setNotificationSettings(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 309
    return-void
.end method

.method public final setProfileSettings(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    .line 320
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    const-string/jumbo v1, "xm: %d, ap: %d, clientLevel: %d, sequences: %s, %s, %s, %s, notificationSettings: %s, profileSettings: %s"

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->energy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->ap:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->clientLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->mediaHighWaterMarks:Ljava/util/Map;

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " [dirty]"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowNicknameEdit:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, " [allowNicknameEdit]"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->allowFactionChoice:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, " [allowFactionChoice]"

    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePlayerPersonal;->profileSettings:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method
