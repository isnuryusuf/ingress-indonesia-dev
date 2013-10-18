.class public final enum Lcom/nianticproject/ingress/common/scanner/ac;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/ac;

.field private static final synthetic c:[Lcom/nianticproject/ingress/common/scanner/ac;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ev;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/ac;

    const-string/jumbo v1, "HACK_PORTAL"

    sget-object v2, Lcom/nianticproject/ingress/common/missions/eb;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    invoke-static {v2}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/ac;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/ac;->a:Lcom/nianticproject/ingress/common/scanner/ac;

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/ac;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ac;->a:Lcom/nianticproject/ingress/common/scanner/ac;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/ac;->c:[Lcom/nianticproject/ingress/common/scanner/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ac;->b:Ljava/util/List;

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ac;
    .locals 1
    .parameter

    .prologue
    .line 138
    const-class v0, Lcom/nianticproject/ingress/common/scanner/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ac;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/ac;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ac;->c:[Lcom/nianticproject/ingress/common/scanner/ac;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/ac;

    return-object v0
.end method
