.class public final Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ap:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final firstAchievementContinuationToken:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final highlightedAchievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final team:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 81
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    .line 82
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    .line 83
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    .line 87
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    .line 124
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    iget-wide v3, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    const-string/jumbo v0, "team: %s, avatar: %s, metrics: %s, highlightedAchievements: %s, firstAchievementContinuationToken: %d, ap: %d, level: %d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->team:Lcom/nianticproject/ingress/shared/ai;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->avatar:Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->metrics:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->highlightedAchievements:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->firstAchievementContinuationToken:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->ap:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
