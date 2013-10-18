.class public final Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ultraStrikeDamageSpecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final xmpDamageSpecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x3dcccccd

    const v9, 0x3d75c28f

    const v8, 0x3d23d70a

    const v7, 0x3ca3d70a

    const v6, 0x3c23d70a

    .line 25
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x88

    const/16 v4, 0xb4

    invoke-direct {v2, v3, v4, v6}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0xe2

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4, v7}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x196

    const/16 v4, 0x21c

    invoke-direct {v2, v3, v4, v8}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x276

    const/16 v4, 0x348

    invoke-direct {v2, v3, v4, v9}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x357

    const/16 v4, 0x474

    invoke-direct {v2, v3, v4, v10}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x42f

    const/16 v4, 0x594

    const v5, 0x3e0f5c29

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x546

    const/16 v4, 0x708

    const v5, 0x3e3851ec

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x6db

    const/16 v4, 0x924

    const v5, 0x3e4ccccd

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->b:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x110

    const/16 v4, 0x168

    invoke-direct {v2, v3, v4, v6}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x1c4

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4, v7}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x32c

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4, v8}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x4ec

    const/16 v4, 0x690

    invoke-direct {v2, v3, v4, v9}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x6ae

    const/16 v4, 0x8e8

    invoke-direct {v2, v3, v4, v10}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0x85e

    const/16 v4, 0xb28

    const v5, 0x3e0f5c29

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0xa8c

    const/16 v4, 0xe10

    const v5, 0x3e3851ec

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    const/16 v3, 0xdb6

    const/16 v4, 0x1248

    const v5, 0x3e4ccccd

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/server/EmpDamageSpec;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->c:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;

    sget-object v1, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->b:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->c:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->a:Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    .line 119
    sget-object v0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    .line 121
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/server/EmpDamageSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    .line 66
    iput-object p2, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)Lcom/nianticproject/ingress/server/EmpDamageSpec;
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    return-object v0
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)Lcom/nianticproject/ingress/server/EmpDamageSpec;
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/server/EmpDamageSpec;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    instance-of v1, p1, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;

    .line 83
    iget-object v1, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "xmpDamageSpecMap: "

    iget-object v2, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->xmpDamageSpecMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "ultraStrikeDamageSpecMap"

    iget-object v2, p0, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->ultraStrikeDamageSpecMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
