.class public final enum Lcom/nianticproject/ingress/shared/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/nianticproject/ingress/shared/n;

.field public static final enum B:Lcom/nianticproject/ingress/shared/n;

.field public static final enum C:Lcom/nianticproject/ingress/shared/n;

.field public static final enum D:Lcom/nianticproject/ingress/shared/n;

.field public static final enum E:Lcom/nianticproject/ingress/shared/n;

.field private static final synthetic F:[Lcom/nianticproject/ingress/shared/n;

.field public static final enum a:Lcom/nianticproject/ingress/shared/n;

.field public static final enum b:Lcom/nianticproject/ingress/shared/n;

.field public static final enum c:Lcom/nianticproject/ingress/shared/n;

.field public static final enum d:Lcom/nianticproject/ingress/shared/n;

.field public static final enum e:Lcom/nianticproject/ingress/shared/n;

.field public static final enum f:Lcom/nianticproject/ingress/shared/n;

.field public static final enum g:Lcom/nianticproject/ingress/shared/n;

.field public static final enum h:Lcom/nianticproject/ingress/shared/n;

.field public static final enum i:Lcom/nianticproject/ingress/shared/n;

.field public static final enum j:Lcom/nianticproject/ingress/shared/n;

.field public static final enum k:Lcom/nianticproject/ingress/shared/n;

.field public static final enum l:Lcom/nianticproject/ingress/shared/n;

.field public static final enum m:Lcom/nianticproject/ingress/shared/n;

.field public static final enum n:Lcom/nianticproject/ingress/shared/n;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum o:Lcom/nianticproject/ingress/shared/n;

.field public static final enum p:Lcom/nianticproject/ingress/shared/n;

.field public static final enum q:Lcom/nianticproject/ingress/shared/n;

.field public static final enum r:Lcom/nianticproject/ingress/shared/n;

.field public static final enum s:Lcom/nianticproject/ingress/shared/n;

.field public static final enum t:Lcom/nianticproject/ingress/shared/n;

.field public static final enum u:Lcom/nianticproject/ingress/shared/n;

.field public static final enum v:Lcom/nianticproject/ingress/shared/n;

.field public static final enum w:Lcom/nianticproject/ingress/shared/n;

.field public static final enum x:Lcom/nianticproject/ingress/shared/n;

.field public static final enum y:Lcom/nianticproject/ingress/shared/n;

.field public static final enum z:Lcom/nianticproject/ingress/shared/n;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_IS_DESTINATION"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->a:Lcom/nianticproject/ingress/shared/n;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_WRONG_TEAM"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->b:Lcom/nianticproject/ingress/shared/n;

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "DESTINATION_WRONG_TEAM"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->c:Lcom/nianticproject/ingress/shared/n;

    .line 17
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_MUST_BE_FULL"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->d:Lcom/nianticproject/ingress/shared/n;

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "DESTINATION_MUST_BE_FULL"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->e:Lcom/nianticproject/ingress/shared/n;

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "REQUIRES_LINK_KEY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->f:Lcom/nianticproject/ingress/shared/n;

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ITEM_DOES_NOT_EXIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->g:Lcom/nianticproject/ingress/shared/n;

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "CANNOT_PART_WITH_THIS_ITEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->h:Lcom/nianticproject/ingress/shared/n;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ITEM_IS_NOT_A_RESOURCE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->i:Lcom/nianticproject/ingress/shared/n;

    .line 29
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ITEM_DOES_NOT_HAVE_CONTROLLING_PLAYER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->j:Lcom/nianticproject/ingress/shared/n;

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "WRONG_OWNER_FOR_LINK_KEY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->k:Lcom/nianticproject/ingress/shared/n;

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "CROSSES_EXISTING_LINK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->l:Lcom/nianticproject/ingress/shared/n;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "BEYOND_ORIGIN_RANGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->m:Lcom/nianticproject/ingress/shared/n;

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "BEYOND_DESTINATION_RANGE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->n:Lcom/nianticproject/ingress/shared/n;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_NOT_FOUND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->o:Lcom/nianticproject/ingress/shared/n;

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "DESTINATION_NOT_FOUND"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->p:Lcom/nianticproject/ingress/shared/n;

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "EDGE_ALREADY_EXISTS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->q:Lcom/nianticproject/ingress/shared/n;

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_LINK_CAPACITY_REACHED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->r:Lcom/nianticproject/ingress/shared/n;

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "CLIENT_UNABLE_TO_USE_ITEM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->s:Lcom/nianticproject/ingress/shared/n;

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "SERVER_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->t:Lcom/nianticproject/ingress/shared/n;

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "CONTAINED_WITHIN_CAPTURED_REGION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->u:Lcom/nianticproject/ingress/shared/n;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_UNOWNED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->v:Lcom/nianticproject/ingress/shared/n;

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "DESTINATION_UNOWNED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->w:Lcom/nianticproject/ingress/shared/n;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_MISSING_LOCATION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->x:Lcom/nianticproject/ingress/shared/n;

    .line 47
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "DESTINATION_MISSING_LOCATION"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->y:Lcom/nianticproject/ingress/shared/n;

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "NEED_MORE_ENERGY"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->z:Lcom/nianticproject/ingress/shared/n;

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "PLAYER_DEPLETED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->A:Lcom/nianticproject/ingress/shared/n;

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "TIMEOUT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->B:Lcom/nianticproject/ingress/shared/n;

    .line 60
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "LINK_KEY_IS_INVALID"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->C:Lcom/nianticproject/ingress/shared/n;

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "ORIGIN_PORTAL_NOT_IN_RANGE_OF_PLAYER"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->D:Lcom/nianticproject/ingress/shared/n;

    .line 64
    new-instance v0, Lcom/nianticproject/ingress/shared/n;

    const-string/jumbo v1, "TOO_BUSY"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->E:Lcom/nianticproject/ingress/shared/n;

    .line 12
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/n;

    sget-object v1, Lcom/nianticproject/ingress/shared/n;->a:Lcom/nianticproject/ingress/shared/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/n;->b:Lcom/nianticproject/ingress/shared/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/n;->c:Lcom/nianticproject/ingress/shared/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/n;->d:Lcom/nianticproject/ingress/shared/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/n;->e:Lcom/nianticproject/ingress/shared/n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->f:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->g:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->h:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->i:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->j:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->k:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->l:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->m:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->n:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->o:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->p:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->q:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->r:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->s:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->t:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->u:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->v:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->w:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->x:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->y:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->z:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->A:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->B:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->C:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->D:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/nianticproject/ingress/shared/n;->E:Lcom/nianticproject/ingress/shared/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/n;->F:[Lcom/nianticproject/ingress/shared/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/n;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/nianticproject/ingress/shared/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/n;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/n;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/nianticproject/ingress/shared/n;->F:[Lcom/nianticproject/ingress/shared/n;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/n;

    return-object v0
.end method
