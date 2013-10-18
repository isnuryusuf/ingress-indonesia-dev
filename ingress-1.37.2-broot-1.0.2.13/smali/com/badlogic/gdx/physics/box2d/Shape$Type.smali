.class public final enum Lcom/badlogic/gdx/physics/box2d/Shape$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/physics/box2d/Shape$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string/jumbo v1, "Circle"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string/jumbo v1, "Polygon"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string/jumbo v1, "Edge"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string/jumbo v1, "Chain"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method
