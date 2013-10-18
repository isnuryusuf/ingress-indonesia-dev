.class public final enum Lcom/nianticproject/ingress/shared/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/af;

.field public static final enum b:Lcom/nianticproject/ingress/shared/af;

.field public static final enum c:Lcom/nianticproject/ingress/shared/af;

.field public static final enum d:Lcom/nianticproject/ingress/shared/af;

.field public static final enum e:Lcom/nianticproject/ingress/shared/af;

.field public static final enum f:Lcom/nianticproject/ingress/shared/af;

.field public static final enum g:Lcom/nianticproject/ingress/shared/af;

.field public static final enum h:Lcom/nianticproject/ingress/shared/af;

.field public static final enum i:Lcom/nianticproject/ingress/shared/af;

.field public static final enum j:Lcom/nianticproject/ingress/shared/af;

.field public static final enum k:Lcom/nianticproject/ingress/shared/af;

.field public static final enum l:Lcom/nianticproject/ingress/shared/af;

.field public static final enum m:Lcom/nianticproject/ingress/shared/af;

.field public static final enum n:Lcom/nianticproject/ingress/shared/af;

.field private static final synthetic s:[Lcom/nianticproject/ingress/shared/af;


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v1, "EMITTER_A"

    const-string/jumbo v3, "Resonator"

    const-string/jumbo v5, "XM object used to power-up a Portal and align it to a Faction."

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    .line 14
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "EMP_BURSTER"

    const-string/jumbo v6, "Xmp Burster"

    const-string/jumbo v7, "XMP"

    const-string/jumbo v9, "Exotic Matter Pulse weapons which can destroy enemy Resonators and Mods and neutralize enemy Portals."

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    .line 16
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "FLIP_CARD"

    const-string/jumbo v6, "Alignment Virus"

    move v5, v12

    move v7, v13

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->c:Lcom/nianticproject/ingress/shared/af;

    .line 17
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "FORCE_AMP"

    const-string/jumbo v6, "Force Amp"

    const/16 v7, 0x8

    const-string/jumbo v8, "Mod that increases power of Portal attacks against enemy agents."

    move v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    .line 18
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "HEATSINK"

    const/4 v5, 0x4

    const-string/jumbo v6, "Heat Sink"

    const/4 v7, 0x6

    const-string/jumbo v8, "Mod that reduces cooldown time between Portal hacks."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    .line 19
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "LINK_AMPLIFIER"

    const/4 v5, 0x5

    const-string/jumbo v6, "Link Amp"

    const/4 v7, 0x5

    const-string/jumbo v8, "Mod that increases Portal link range."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    .line 20
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "MEDIA"

    const/4 v5, 0x6

    const-string/jumbo v6, "Media"

    const/16 v7, 0xb

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    .line 21
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "MULTIHACK"

    const/4 v5, 0x7

    const-string/jumbo v6, "Multi-hack"

    const/4 v7, 0x7

    const-string/jumbo v8, "Mod that increases hacking capacity of a Portal."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    .line 22
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "PORTAL_LINK_KEY"

    const/16 v5, 0x8

    const-string/jumbo v6, "Portal Key"

    const/16 v7, 0xc

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    .line 23
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "POWER_CUBE"

    const/16 v5, 0x9

    const-string/jumbo v6, "Power Cube"

    const/16 v7, 0xa

    const-string/jumbo v8, "Store of XM which can be used to recharge Scanner."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    .line 24
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "RES_SHIELD"

    const/16 v5, 0xa

    const-string/jumbo v6, "Portal Shield"

    const/4 v7, 0x4

    const-string/jumbo v8, "Mod which shields Portal from attacks."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    .line 25
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "TURRET"

    const/16 v5, 0xb

    const-string/jumbo v6, "Turret"

    const/16 v7, 0x9

    const-string/jumbo v8, "Mod that increases frequency of Portal attacks against enemy agents."

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    .line 26
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "ULTRA_STRIKE"

    const/16 v5, 0xc

    const-string/jumbo v6, "Ultra Strike"

    const-string/jumbo v7, "UXMP"

    const-string/jumbo v9, "A variation of the Exotic Matter Pulse weapon with a more powerful blast that occurs within a smaller radius."

    move v8, v12

    invoke-direct/range {v3 .. v9}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    .line 36
    new-instance v3, Lcom/nianticproject/ingress/shared/af;

    const-string/jumbo v4, "UNKNOWN"

    const/16 v5, 0xd

    const-string/jumbo v6, "Unusual Object"

    const/16 v7, 0xd

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    .line 10
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/af;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->c:Lcom/nianticproject/ingress/shared/af;

    aput-object v1, v0, v12

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/af;->s:[Lcom/nianticproject/ingress/shared/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/shared/af;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/af;->o:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/af;->p:Ljava/lang/String;

    .line 53
    iput p5, p0, Lcom/nianticproject/ingress/shared/af;->q:I

    .line 54
    iput-object p6, p0, Lcom/nianticproject/ingress/shared/af;->r:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/af;
    .locals 1
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/nianticproject/ingress/shared/af;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/af;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/af;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/af;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->s:[Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/af;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/af;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/af;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/nianticproject/ingress/shared/af;->q:I

    return v0
.end method
