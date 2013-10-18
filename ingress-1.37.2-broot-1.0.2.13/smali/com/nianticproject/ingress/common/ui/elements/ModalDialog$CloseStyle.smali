.class public final enum Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

.field public static final enum NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

.field public static final enum OK:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

.field public static final enum X:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 78
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    const-string/jumbo v1, "X"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->X:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 79
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->OK:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->X:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->OK:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->$VALUES:[Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;
    .locals 1
    .parameter

    .prologue
    .line 76
    const-class v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->$VALUES:[Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    return-object v0
.end method
