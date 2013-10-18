.class public final enum Lcom/nianticproject/ingress/shared/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/shared/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic C:[Lcom/nianticproject/ingress/shared/g;

.field public static final enum a:Lcom/nianticproject/ingress/shared/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum b:Lcom/nianticproject/ingress/shared/g;

.field public static final enum c:Lcom/nianticproject/ingress/shared/g;

.field public static final enum d:Lcom/nianticproject/ingress/shared/g;

.field public static final enum e:Lcom/nianticproject/ingress/shared/g;

.field public static final enum f:Lcom/nianticproject/ingress/shared/g;

.field public static final enum g:Lcom/nianticproject/ingress/shared/g;

.field public static final enum h:Lcom/nianticproject/ingress/shared/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Lcom/nianticproject/ingress/shared/g;

.field public static final enum j:Lcom/nianticproject/ingress/shared/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum k:Lcom/nianticproject/ingress/shared/g;

.field public static final enum l:Lcom/nianticproject/ingress/shared/g;

.field public static final enum m:Lcom/nianticproject/ingress/shared/g;

.field public static final enum n:Lcom/nianticproject/ingress/shared/g;

.field public static final enum o:Lcom/nianticproject/ingress/shared/g;

.field public static final enum p:Lcom/nianticproject/ingress/shared/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum q:Lcom/nianticproject/ingress/shared/g;

.field public static final enum r:Lcom/nianticproject/ingress/shared/g;

.field public static final enum s:Lcom/nianticproject/ingress/shared/g;

.field public static final enum t:Lcom/nianticproject/ingress/shared/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum u:Lcom/nianticproject/ingress/shared/g;

.field public static final enum v:Lcom/nianticproject/ingress/shared/g;

.field public static final enum w:Lcom/nianticproject/ingress/shared/g;

.field public static final enum x:Lcom/nianticproject/ingress/shared/g;

.field public static final enum y:Lcom/nianticproject/ingress/shared/g;

.field public static final enum z:Lcom/nianticproject/ingress/shared/g;


# instance fields
.field private final A:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 24
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PANORAMIO_PORTAL"

    invoke-direct {v1, v2, v0, v5}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->a:Lcom/nianticproject/ingress/shared/g;

    .line 26
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "RANDOM_PORTAL"

    invoke-direct {v1, v2, v5, v6}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->b:Lcom/nianticproject/ingress/shared/g;

    .line 27
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "BEACON"

    invoke-direct {v1, v2, v6, v7}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->c:Lcom/nianticproject/ingress/shared/g;

    .line 28
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "RESOURCE"

    invoke-direct {v1, v2, v7, v8}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->d:Lcom/nianticproject/ingress/shared/g;

    .line 29
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "INVENTORY_ITEM"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v8, v3}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->e:Lcom/nianticproject/ingress/shared/g;

    .line 30
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "ENERGY_GLOB"

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->f:Lcom/nianticproject/ingress/shared/g;

    .line 31
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "ENERGY_SPAWN_LOCATION"

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->g:Lcom/nianticproject/ingress/shared/g;

    .line 32
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "HMDB_PORTAL"

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->h:Lcom/nianticproject/ingress/shared/g;

    .line 34
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "EDGE"

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->i:Lcom/nianticproject/ingress/shared/g;

    .line 35
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "LOCALSTORE_PORTAL"

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->j:Lcom/nianticproject/ingress/shared/g;

    .line 37
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "CAPTURED_REGION"

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->k:Lcom/nianticproject/ingress/shared/g;

    .line 38
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PLAYER"

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->l:Lcom/nianticproject/ingress/shared/g;

    .line 39
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PLEXT"

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->m:Lcom/nianticproject/ingress/shared/g;

    .line 40
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "TRACKING_RECORD"

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->n:Lcom/nianticproject/ingress/shared/g;

    .line 41
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "TRACKING_GROUP"

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->o:Lcom/nianticproject/ingress/shared/g;

    .line 42
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PASSCODE_REWARD"

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->p:Lcom/nianticproject/ingress/shared/g;

    .line 44
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "SUPEROPS_PORTAL"

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->q:Lcom/nianticproject/ingress/shared/g;

    .line 45
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "ANON_PORTAL"

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->r:Lcom/nianticproject/ingress/shared/g;

    .line 46
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "ACCOUNT_INFO"

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->s:Lcom/nianticproject/ingress/shared/g;

    .line 47
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "GEOSTORE_POI"

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->t:Lcom/nianticproject/ingress/shared/g;

    .line 49
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "GEOSTORE_MOD"

    const/16 v3, 0x14

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->u:Lcom/nianticproject/ingress/shared/g;

    .line 50
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "GEOSTORE_PORTAL"

    const/16 v3, 0x15

    const/16 v4, 0x16

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->v:Lcom/nianticproject/ingress/shared/g;

    .line 51
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PORTAL_IMAGE"

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->w:Lcom/nianticproject/ingress/shared/g;

    .line 52
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "PMRR_CHANGE"

    const/16 v3, 0x17

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->x:Lcom/nianticproject/ingress/shared/g;

    .line 53
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "POI_DATA_CHANGE"

    const/16 v3, 0x18

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->y:Lcom/nianticproject/ingress/shared/g;

    .line 54
    new-instance v1, Lcom/nianticproject/ingress/shared/g;

    const-string/jumbo v2, "AVATAR_LAYER"

    const/16 v3, 0x19

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->z:Lcom/nianticproject/ingress/shared/g;

    .line 23
    const/16 v1, 0x1a

    new-array v1, v1, [Lcom/nianticproject/ingress/shared/g;

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->a:Lcom/nianticproject/ingress/shared/g;

    aput-object v2, v1, v0

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->b:Lcom/nianticproject/ingress/shared/g;

    aput-object v2, v1, v5

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->c:Lcom/nianticproject/ingress/shared/g;

    aput-object v2, v1, v6

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->d:Lcom/nianticproject/ingress/shared/g;

    aput-object v2, v1, v7

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->e:Lcom/nianticproject/ingress/shared/g;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->f:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->g:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->h:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->i:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->j:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->k:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->l:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->m:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->n:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->o:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->p:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->q:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->r:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->s:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->t:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->u:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->v:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->w:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->x:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->y:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->z:Lcom/nianticproject/ingress/shared/g;

    aput-object v3, v1, v2

    sput-object v1, Lcom/nianticproject/ingress/shared/g;->C:[Lcom/nianticproject/ingress/shared/g;

    .line 65
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/nianticproject/ingress/shared/g;->values()[Lcom/nianticproject/ingress/shared/g;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 67
    iget v5, v4, Lcom/nianticproject/ingress/shared/g;->A:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/g;->B:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/nianticproject/ingress/shared/g;->A:I

    .line 130
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/shared/l;->b(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/g;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/g;->a(Lcom/nianticproject/ingress/shared/g;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/g;JJ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const-string/jumbo v0, "%016x%016x.%x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/shared/g;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 100
    const/16 v0, 0x10

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/shared/l;->b(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/g;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/nianticproject/ingress/shared/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/g;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/g;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nianticproject/ingress/shared/g;->C:[Lcom/nianticproject/ingress/shared/g;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/g;

    return-object v0
.end method
