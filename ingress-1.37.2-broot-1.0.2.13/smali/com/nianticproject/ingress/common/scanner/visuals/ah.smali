.class final enum Lcom/nianticproject/ingress/common/scanner/visuals/ah;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

.field public static final enum b:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

.field public static final enum c:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

.field public static final enum d:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

.field private static final synthetic g:[Lcom/nianticproject/ingress/common/scanner/visuals/ah;


# instance fields
.field public final e:F

.field public final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x40ce147b

    const v3, 0x4049999a

    .line 61
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    const-string/jumbo v1, "GROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->a:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    .line 67
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    const-string/jumbo v1, "COLLAPSE"

    const v2, 0x4051eb85

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->b:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    const-string/jumbo v1, "SMOKE"

    const v2, 0x40570a3d

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->c:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    .line 85
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    const-string/jumbo v1, "SECONDARY_SMOKE"

    const/4 v2, 0x3

    const/high16 v3, 0x4088

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->d:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->a:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->b:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->c:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->d:Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->g:[Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 92
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 94
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    .line 95
    iput p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1
.end method

.method public static a()F
    .locals 5

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 101
    iget v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/visuals/ah;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/visuals/ah;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->g:[Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/visuals/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    return-object v0
.end method
