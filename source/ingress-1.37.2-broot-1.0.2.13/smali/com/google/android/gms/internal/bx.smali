.class public final Lcom/google/android/gms/internal/bx;
.super Lcom/google/android/gms/internal/ff;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# instance fields
.field private final c:Lcom/google/android/gms/internal/bg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/k;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ff;-><init>(Lcom/google/android/gms/internal/k;I)V

    new-instance v0, Lcom/google/android/gms/internal/bg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/bg;-><init>(Lcom/google/android/gms/internal/k;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/bg;

    return-void
.end method

.method private j()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx;->j()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    const-string/jumbo v0, "player_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "client_address"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const-string/jumbo v0, "connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "default_display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "default_display_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->e()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "external_participant_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/google/android/gms/games/Player;
    .locals 1

    const-string/jumbo v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bx;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Lcom/google/android/gms/internal/bg;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx;->j()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
