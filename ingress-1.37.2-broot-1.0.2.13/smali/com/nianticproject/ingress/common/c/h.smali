.class public final enum Lcom/nianticproject/ingress/common/c/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/c/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/c/h;

.field public static final enum b:Lcom/nianticproject/ingress/common/c/h;

.field public static final enum c:Lcom/nianticproject/ingress/common/c/h;

.field public static final enum d:Lcom/nianticproject/ingress/common/c/h;

.field private static final synthetic g:[Lcom/nianticproject/ingress/common/c/h;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/c/h;

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "Off"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/nianticproject/ingress/common/c/h;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/h;->a:Lcom/nianticproject/ingress/common/c/h;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/c/h;

    const-string/jumbo v1, "LOW"

    const-string/jumbo v2, "Low"

    const v3, 0x3ea8f5c3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nianticproject/ingress/common/c/h;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/h;->b:Lcom/nianticproject/ingress/common/c/h;

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/c/h;

    const-string/jumbo v1, "MEDIUM"

    const-string/jumbo v2, "Medium"

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nianticproject/ingress/common/c/h;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/h;->c:Lcom/nianticproject/ingress/common/c/h;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/common/c/h;

    const-string/jumbo v1, "HIGH"

    const-string/jumbo v2, "High"

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nianticproject/ingress/common/c/h;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/h;->d:Lcom/nianticproject/ingress/common/c/h;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/h;

    sget-object v1, Lcom/nianticproject/ingress/common/c/h;->a:Lcom/nianticproject/ingress/common/c/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/h;->b:Lcom/nianticproject/ingress/common/c/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/c/h;->c:Lcom/nianticproject/ingress/common/c/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/c/h;->d:Lcom/nianticproject/ingress/common/c/h;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nianticproject/ingress/common/c/h;->g:[Lcom/nianticproject/ingress/common/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/nianticproject/ingress/common/c/h;->e:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/nianticproject/ingress/common/c/h;->f:F

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/c/h;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/nianticproject/ingress/common/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/h;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/c/h;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/nianticproject/ingress/common/c/h;->g:[Lcom/nianticproject/ingress/common/c/h;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/c/h;

    return-object v0
.end method


# virtual methods
.method final a()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/nianticproject/ingress/common/c/h;->f:F

    return v0
.end method
