.class public final Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final group:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final tiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final timestampAwarded:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->group:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->timestampAwarded:J

    .line 81
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 123
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->group:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->group:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->timestampAwarded:J

    iget-wide v3, p1, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->timestampAwarded:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->group:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->timestampAwarded:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    const-string/jumbo v0, "title: %s, description: %s, group: %s, tiers: %s, timestampAwarded: %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->group:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->tiers:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->timestampAwarded:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
