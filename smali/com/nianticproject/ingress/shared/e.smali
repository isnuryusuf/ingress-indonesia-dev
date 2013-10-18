.class public final enum Lcom/nianticproject/ingress/shared/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/e;

.field public static final enum b:Lcom/nianticproject/ingress/shared/e;

.field public static final enum c:Lcom/nianticproject/ingress/shared/e;

.field public static final enum d:Lcom/nianticproject/ingress/shared/e;

.field public static final enum e:Lcom/nianticproject/ingress/shared/e;

.field public static final enum f:Lcom/nianticproject/ingress/shared/e;

.field public static final enum g:Lcom/nianticproject/ingress/shared/e;

.field public static final enum h:Lcom/nianticproject/ingress/shared/e;

.field public static final enum i:Lcom/nianticproject/ingress/shared/e;

.field public static final enum j:Lcom/nianticproject/ingress/shared/e;

.field public static final enum k:Lcom/nianticproject/ingress/shared/e;

.field public static final enum l:Lcom/nianticproject/ingress/shared/e;

.field private static final synthetic m:[Lcom/nianticproject/ingress/shared/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "WEAPON_DOES_NOT_EXIST"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->a:Lcom/nianticproject/ingress/shared/e;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "GAME_ENTITY_IS_NOT_A_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->b:Lcom/nianticproject/ingress/shared/e;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "WRONG_WEAPON_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->c:Lcom/nianticproject/ingress/shared/e;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "WEAPON_DOES_NOT_HAVE_OWNER"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->d:Lcom/nianticproject/ingress/shared/e;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "WRONG_OWNER_FOR_WEAPON"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->e:Lcom/nianticproject/ingress/shared/e;

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "CLIENT_UNABLE_TO_USE_WEAPON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->f:Lcom/nianticproject/ingress/shared/e;

    .line 24
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "SERVER_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->g:Lcom/nianticproject/ingress/shared/e;

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "WRONG_LEVEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->h:Lcom/nianticproject/ingress/shared/e;

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "OUT_OF_AMMO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->i:Lcom/nianticproject/ingress/shared/e;

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "NEED_MORE_ENERGY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->j:Lcom/nianticproject/ingress/shared/e;

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "PLAYER_DEPLETED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->k:Lcom/nianticproject/ingress/shared/e;

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/shared/e;

    const-string/jumbo v1, "TOO_BUSY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->l:Lcom/nianticproject/ingress/shared/e;

    .line 10
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/e;

    sget-object v1, Lcom/nianticproject/ingress/shared/e;->a:Lcom/nianticproject/ingress/shared/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/e;->b:Lcom/nianticproject/ingress/shared/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/e;->c:Lcom/nianticproject/ingress/shared/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/e;->d:Lcom/nianticproject/ingress/shared/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/shared/e;->e:Lcom/nianticproject/ingress/shared/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->f:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->g:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->h:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->i:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->j:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->k:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nianticproject/ingress/shared/e;->l:Lcom/nianticproject/ingress/shared/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/e;->m:[Lcom/nianticproject/ingress/shared/e;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/e;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/shared/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/e;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/e;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/shared/e;->m:[Lcom/nianticproject/ingress/shared/e;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/e;

    return-object v0
.end method
