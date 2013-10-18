.class public final Lcom/nianticproject/ingress/common/u/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)Lcom/nianticproject/ingress/common/u/t;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;",
            ")",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.setNotificationSettings"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 338
    new-instance v4, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;-><init>(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V

    .line 340
    new-instance v0, Lcom/nianticproject/ingress/common/u/t;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/rpc/r;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "gameplay"

    const-string/jumbo v3, "setNotificationSettings"

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/u/t;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/l;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a()Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/GameScore;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getGameScore"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Lcom/nianticproject/ingress/shared/GameScore;

    const-class v2, Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getGameScore"

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(I)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.levelUp"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/p;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "player"

    const-string/jumbo v4, "levelUp"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/ai;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.setTeam"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/u/be;

    const-string/jumbo v1, "devEmptyBasket"

    const-string/jumbo v2, "setTeam"

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/ai;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/u/be;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.setProfileSettings"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 439
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/rpc/w;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "setProfileSettings"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/Iterable;JI)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;JI)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getPaginatedPlexts"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 184
    sget v0, Lcom/nianticproject/ingress/common/a;->b:I

    if-ne p3, v0, :cond_0

    const/4 v1, 0x1

    .line 185
    :goto_0
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PaginatedCellPlextParams;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/rpc/PaginatedCellPlextParams;-><init>(ZLjava/lang/Iterable;JI)V

    .line 187
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ac;

    new-instance v2, Lcom/nianticproject/ingress/common/u/al;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/u/al;-><init>()V

    const-class v3, Ljava/lang/Void;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "getPaginatedPlexts"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    .line 184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/shared/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.storyItemOpened"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/shared/o;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "player"

    const-string/jumbo v4, "storyItemOpened"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getPlayerProfile"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/shared/rpc/PaginatedAchievementsParams;-><init>(Ljava/lang/String;I)V

    .line 396
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "getPaginatedDisplayedAchievements"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PortalImagePage;",
            "Lcom/nianticproject/ingress/shared/rpc/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.uploadPortalDetailsForCuration"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/u;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "geoInfo"

    const-string/jumbo v4, "getPortalImages"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/a/d/u;Z)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/d/u;",
            "Z)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.say"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/SayParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/SayParams;-><init>(Ljava/lang/String;Lcom/google/a/d/u;Z)V

    .line 123
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ac;

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/nianticproject/ingress/shared/v;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "player"

    const-string/jumbo v4, "say"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/invites/InviteInfo;",
            "Lcom/nianticproject/ingress/shared/rpc/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.inviteViaEmail"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 201
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/InviteParams;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/shared/rpc/InviteParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ac;

    const-class v2, Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/o;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "inviteViaEmail"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.chooseAvatar"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 425
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "chooseAvatar"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.uploadPortalPhoto"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "uploadPortalPhoto"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 8
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/a/d/u;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/rpc/b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.uploadPortalDetailsForCuration"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "setPortalDetailsForCuration"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.votePortalImage"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 368
    new-instance v0, Lcom/nianticproject/ingress/shared/portal/PortalImageVoteParams;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/shared/portal/PortalImageVoteParams;-><init>(Ljava/lang/String;Z)V

    .line 369
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/ai;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "geoInfo"

    const-string/jumbo v4, "votePortalImage"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getNickNamesFromPlayerIds"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    new-instance v1, Lcom/nianticproject/ingress/common/u/ak;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ak;-><init>()V

    const-class v2, Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getNickNamesFromPlayerIds"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static b()Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/invites/InviteInfo;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getInviteInfo"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    const-class v2, Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getInviteInfo"

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static b(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/ai;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.chooseFaction"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/h;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "chooseFaction"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.validateNickname"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/q;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "validateNickname"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.uploadPortalPhotoByUrl"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v2, Ljava/lang/Void;

    const-class v3, Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v2

    const-string/jumbo v3, "playerUndecorated"

    const-string/jumbo v4, "uploadPortalPhotoByUrl"

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static c()Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getUploadUrl"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getUploadUrl"

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.persistNickname"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/q;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "persistNickname"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static d()Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getAvatarOptions"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;

    const-class v2, Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getAvatarOptions"

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static d(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    const-string/jumbo v0, "PlayerRpcRequests.getPlayerProfile"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 381
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    const-class v2, Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "playerUndecorated"

    const-string/jumbo v3, "getPlayerProfile"

    invoke-static {p0}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
