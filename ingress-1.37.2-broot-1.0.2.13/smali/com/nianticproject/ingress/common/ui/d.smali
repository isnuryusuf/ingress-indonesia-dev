.class public final enum Lcom/nianticproject/ingress/common/ui/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/ui/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/ui/d;

.field public static final enum b:Lcom/nianticproject/ingress/common/ui/d;

.field public static final enum c:Lcom/nianticproject/ingress/common/ui/d;

.field public static final enum d:Lcom/nianticproject/ingress/common/ui/d;

.field public static final enum e:Lcom/nianticproject/ingress/common/ui/d;

.field public static final enum f:Lcom/nianticproject/ingress/common/ui/d;

.field private static final synthetic i:[Lcom/nianticproject/ingress/common/ui/d;


# instance fields
.field public final g:C

.field private final h:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "NONE"

    const v2, 0xe000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->a:Lcom/nianticproject/ingress/common/ui/d;

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "WHITE"

    const v2, 0xe001

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->b:Lcom/nianticproject/ingress/common/ui/d;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "BLACK"

    const v2, 0xe002

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->c:Lcom/nianticproject/ingress/common/ui/d;

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "CLEAR"

    const/4 v2, 0x3

    const v3, 0xe003

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->d:Lcom/nianticproject/ingress/common/ui/d;

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "TUTORIAL_TEXT"

    const/4 v2, 0x4

    const v3, 0xe004

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f47ae14

    invoke-direct {v4, v6, v5, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d;

    const-string/jumbo v1, "TUTORIAL_HIGHLIGHT"

    const/4 v2, 0x5

    const v3, 0xe005

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v7, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d;-><init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->f:Lcom/nianticproject/ingress/common/ui/d;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/d;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/d;->a:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nianticproject/ingress/common/ui/d;->b:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nianticproject/ingress/common/ui/d;->c:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v1, v0, v10

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/ui/d;->d:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/ui/d;->f:Lcom/nianticproject/ingress/common/ui/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/ui/d;->i:[Lcom/nianticproject/ingress/common/ui/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    const v0, 0xe000

    if-lt p3, v0, :cond_0

    const v0, 0xf8ff

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Codes must be in the allocated range."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 40
    iput-char p3, p0, Lcom/nianticproject/ingress/common/ui/d;->g:C

    .line 41
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/d;->h:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[Lcom/badlogic/gdx/graphics/Color;
    .locals 8

    .prologue
    const v7, 0xe000

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/d;->values()[Lcom/nianticproject/ingress/common/ui/d;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 47
    iget-char v6, v5, Lcom/nianticproject/ingress/common/ui/d;->g:C

    if-le v6, v0, :cond_0

    iget-char v0, v5, Lcom/nianticproject/ingress/common/ui/d;->g:C

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/badlogic/gdx/graphics/Color;

    .line 50
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/d;->values()[Lcom/nianticproject/ingress/common/ui/d;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    .line 51
    iget-char v5, v1, Lcom/nianticproject/ingress/common/ui/d;->g:C

    sub-int/2addr v5, v7

    .line 52
    aget-object v6, v2, v5

    if-eqz v6, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Code has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/d;->h:Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v2, v5

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/d;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/nianticproject/ingress/common/ui/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/ui/d;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/common/ui/d;->i:[Lcom/nianticproject/ingress/common/ui/d;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/ui/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/d;

    return-object v0
.end method
