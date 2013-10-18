.class public final Lcom/google/android/gms/games/GameEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/GameEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/net/Uri;

.field private final h:Landroid/net/Uri;

.field private final i:Landroid/net/Uri;

.field private final j:Z

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/a;

    invoke-direct {v0}, Lcom/google/android/gms/games/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Game;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->d:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->e:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->h()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->g:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->i()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->h:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->j()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->i:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->j:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->k:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->l:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->n()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->m:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->n:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->p()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->o:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/GameEntity;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/GameEntity;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/GameEntity;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/GameEntity;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/GameEntity;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/GameEntity;->g:Landroid/net/Uri;

    iput-object p8, p0, Lcom/google/android/gms/games/GameEntity;->h:Landroid/net/Uri;

    iput-object p9, p0, Lcom/google/android/gms/games/GameEntity;->i:Landroid/net/Uri;

    iput-boolean p10, p0, Lcom/google/android/gms/games/GameEntity;->j:Z

    iput-boolean p11, p0, Lcom/google/android/gms/games/GameEntity;->k:Z

    iput-object p12, p0, Lcom/google/android/gms/games/GameEntity;->l:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/games/GameEntity;->m:I

    iput p14, p0, Lcom/google/android/gms/games/GameEntity;->n:I

    iput p15, p0, Lcom/google/android/gms/games/GameEntity;->o:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIB)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/google/android/gms/games/GameEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;III)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/games/Game;)I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->h()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->i()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->j()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/Game;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/games/Game;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->h()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->j()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->k()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->l()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "ApplicationId"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "PrimaryCategory"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "SecondaryCategory"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "DeveloperName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "HiResImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "FeaturedImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "PlayEnabledGame"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "InstanceInstalled"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "InstancePackageName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "GameplayAclStatus"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "AchievementTotalCount"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    const-string/jumbo v1, "LeaderboardCount"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public final i()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->j:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->k:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->m:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->n:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->o:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->g:Landroid/net/Uri;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->h:Landroid/net/Uri;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->i:Landroid/net/Uri;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->j:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->k:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->h:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method
