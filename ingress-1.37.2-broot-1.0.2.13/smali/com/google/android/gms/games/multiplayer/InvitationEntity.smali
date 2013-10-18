.class public final Lcom/google/android/gms/games/multiplayer/InvitationEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/games/GameEntity;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:I

.field private final e:Lcom/google/android/gms/games/multiplayer/Participant;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/a;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/Participant;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/GameEntity;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a:Lcom/google/android/gms/games/GameEntity;

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->c:J

    iput p5, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->d:I

    iput-object p6, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->e:Lcom/google/android/gms/games/multiplayer/Participant;

    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/Participant;Ljava/util/ArrayList;B)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/Participant;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->b()Lcom/google/android/gms/games/Game;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a:Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->c:J

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->d:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->d()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v0

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Must have a valid inviter!"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Participant;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->e:Lcom/google/android/gms/games/multiplayer/Participant;

    return-void
.end method

.method public static a(Lcom/google/android/gms/games/multiplayer/Invitation;)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->b()Lcom/google/android/gms/games/Game;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->d()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->g()Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->b()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->b()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->d()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->d()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "Game"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->b()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "InvitationId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "CreationTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "InvitationType"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "Inviter"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->d()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "Participants"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->e:Lcom/google/android/gms/games/multiplayer/Participant;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->d:I

    return v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a:Lcom/google/android/gms/games/GameEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->e:Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/Participant;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/Participant;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
