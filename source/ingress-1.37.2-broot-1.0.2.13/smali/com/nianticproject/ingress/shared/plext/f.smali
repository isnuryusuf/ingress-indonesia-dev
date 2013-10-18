.class public final enum Lcom/nianticproject/ingress/shared/plext/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/plext/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/plext/f;

.field public static final enum b:Lcom/nianticproject/ingress/shared/plext/f;

.field public static final enum c:Lcom/nianticproject/ingress/shared/plext/f;

.field private static final synthetic e:[Lcom/nianticproject/ingress/shared/plext/f;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/f;

    const-string/jumbo v1, "SYSTEM_BROADCAST"

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/shared/plext/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/f;->a:Lcom/nianticproject/ingress/shared/plext/f;

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/f;

    const-string/jumbo v1, "SYSTEM_NARROWCAST"

    invoke-direct {v0, v1, v3, v3}, Lcom/nianticproject/ingress/shared/plext/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/f;->b:Lcom/nianticproject/ingress/shared/plext/f;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/f;

    const-string/jumbo v1, "PLAYER_GENERATED"

    invoke-direct {v0, v1, v4, v4}, Lcom/nianticproject/ingress/shared/plext/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/f;->c:Lcom/nianticproject/ingress/shared/plext/f;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/plext/f;

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/f;->a:Lcom/nianticproject/ingress/shared/plext/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/f;->b:Lcom/nianticproject/ingress/shared/plext/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/f;->c:Lcom/nianticproject/ingress/shared/plext/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/shared/plext/f;->e:[Lcom/nianticproject/ingress/shared/plext/f;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/nianticproject/ingress/shared/plext/f;->d:I

    .line 27
    return-void
.end method

.method public static a(I)Lcom/nianticproject/ingress/shared/plext/f;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {}, Lcom/nianticproject/ingress/shared/plext/f;->values()[Lcom/nianticproject/ingress/shared/plext/f;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 41
    iget v5, v4, Lcom/nianticproject/ingress/shared/plext/f;->d:I

    if-ne v5, p0, :cond_0

    .line 42
    return-object v4

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "%d does not correspond to any known PlextTYpe"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/f;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/nianticproject/ingress/shared/plext/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/f;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/plext/f;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nianticproject/ingress/shared/plext/f;->e:[Lcom/nianticproject/ingress/shared/plext/f;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/plext/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/plext/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/nianticproject/ingress/shared/plext/f;->d:I

    return v0
.end method
