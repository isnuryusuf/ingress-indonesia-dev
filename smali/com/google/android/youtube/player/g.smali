.class public final enum Lcom/google/android/youtube/player/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/player/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/youtube/player/g;

.field public static final enum b:Lcom/google/android/youtube/player/g;

.field public static final enum c:Lcom/google/android/youtube/player/g;

.field public static final enum d:Lcom/google/android/youtube/player/g;

.field public static final enum e:Lcom/google/android/youtube/player/g;

.field public static final enum f:Lcom/google/android/youtube/player/g;

.field public static final enum g:Lcom/google/android/youtube/player/g;

.field public static final enum h:Lcom/google/android/youtube/player/g;

.field public static final enum i:Lcom/google/android/youtube/player/g;

.field public static final enum j:Lcom/google/android/youtube/player/g;

.field public static final enum k:Lcom/google/android/youtube/player/g;

.field public static final enum l:Lcom/google/android/youtube/player/g;

.field public static final enum m:Lcom/google/android/youtube/player/g;

.field private static final synthetic n:[Lcom/google/android/youtube/player/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "EMBEDDING_DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->a:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "BLOCKED_FOR_APP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->b:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "NOT_PLAYABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->c:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->d:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "UNAUTHORIZED_OVERLAY"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->e:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "PLAYER_VIEW_TOO_SMALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->f:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "EMPTY_PLAYLIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->g:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "AUTOPLAY_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->h:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "USER_DECLINED_RESTRICTED_CONTENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->i:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "USER_DECLINED_HIGH_BANDWIDTH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->j:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "UNEXPECTED_SERVICE_DISCONNECTION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->k:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "INTERNAL_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->l:Lcom/google/android/youtube/player/g;

    new-instance v0, Lcom/google/android/youtube/player/g;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/g;->m:Lcom/google/android/youtube/player/g;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/android/youtube/player/g;

    sget-object v1, Lcom/google/android/youtube/player/g;->a:Lcom/google/android/youtube/player/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/player/g;->b:Lcom/google/android/youtube/player/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/player/g;->c:Lcom/google/android/youtube/player/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/player/g;->d:Lcom/google/android/youtube/player/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/player/g;->e:Lcom/google/android/youtube/player/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/player/g;->f:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/player/g;->g:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/player/g;->h:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/player/g;->i:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/player/g;->j:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/player/g;->k:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/player/g;->l:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/player/g;->m:Lcom/google/android/youtube/player/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/player/g;->n:[Lcom/google/android/youtube/player/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/g;
    .locals 1

    const-class v0, Lcom/google/android/youtube/player/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/g;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/player/g;
    .locals 1

    sget-object v0, Lcom/google/android/youtube/player/g;->n:[Lcom/google/android/youtube/player/g;

    invoke-virtual {v0}, [Lcom/google/android/youtube/player/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/player/g;

    return-object v0
.end method
