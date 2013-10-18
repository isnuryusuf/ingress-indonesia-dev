.class public Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final continuationToken:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final displayedAchievements:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    .line 31
    iput p2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
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
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;

    .line 68
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string/jumbo v0, "displayedAchievements: %s, continuationToken: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->displayedAchievements:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->continuationToken:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
