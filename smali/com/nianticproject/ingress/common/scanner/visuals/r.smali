.class final enum Lcom/nianticproject/ingress/common/scanner/visuals/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/visuals/r;

.field public static final enum b:Lcom/nianticproject/ingress/common/scanner/visuals/r;

.field public static final enum c:Lcom/nianticproject/ingress/common/scanner/visuals/r;

.field public static final enum d:Lcom/nianticproject/ingress/common/scanner/visuals/r;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/scanner/visuals/r;


# instance fields
.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const v3, 0x3ecccccd

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    const-string/jumbo v1, "WAIT"

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/p;->c()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/r;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->a:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    const-string/jumbo v1, "MATERIALIZE"

    invoke-direct {v0, v1, v6, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/r;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->b:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 53
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v7, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/r;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->c:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    const-string/jumbo v1, "SPININ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/r;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->d:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/r;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/r;->a:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/r;->b:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/r;->c:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/r;->d:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->f:[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->e:F

    .line 61
    return-void
.end method

.method public static a()F
    .locals 5

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 73
    iget v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/r;->e:F

    add-float/2addr v1, v4

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/visuals/r;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->f:[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/visuals/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/visuals/r;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/nianticproject/ingress/common/scanner/visuals/r;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne p0, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final c()F
    .locals 3

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 95
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/r;->e:F

    add-float/2addr v1, v2

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return v1
.end method
