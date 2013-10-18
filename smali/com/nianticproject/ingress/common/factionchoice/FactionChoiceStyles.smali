.class Lcom/nianticproject/ingress/common/factionchoice/FactionChoiceStyles;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADA_MESSAGE:Ljava/lang/String; = "message-label"

.field public static final BUTTON_STYLE_CHOOSE_ENLIGHTENED:Ljava/lang/String; = "fc-choose-enlightened"

.field public static final BUTTON_STYLE_CHOOSE_HUMANIST:Ljava/lang/String; = "fc-choose-humanist"

.field public static final BUTTON_WIDTH:Lcom/a/a/e; = null

.field public static final FAST_PATH_DOUBLE_PADDING_INTERNAL:I = 0x1e

.field public static final FAST_PATH_PADDING_INTERNAL:I = 0xf

.field public static final JARVIS_MESSAGE:Ljava/lang/String; = "jarvis-message-label"

.field public static final JARVIS_TERMINAL:Ljava/lang/String; = "jarvis-terminal"

.field public static final JARVIS_TERMINAL_RED:Ljava/lang/String; = "jarvis-terminal-red"

.field public static final LABEL_STYLE_ERROR_MESSAGE:Ljava/lang/String; = "fc-error-message"

.field public static final LABEL_STYLE_HEADER:Ljava/lang/String; = "fc-header"

.field public static final LABEL_STYLE_HINT_ENLIGHTENED:Ljava/lang/String; = "fc-hint-enlightened"

.field public static final LABEL_STYLE_HINT_HUMANIST:Ljava/lang/String; = "fc-hint-humanist"

.field public static final LABEL_STYLE_JOIN_ENLIGHTENED:Ljava/lang/String; = "fc-join-enlightened"

.field public static final LABEL_STYLE_JOIN_HUMANIST:Ljava/lang/String; = "fc-join-humanist"

.field public static final LABEL_STYLE_MESSAGE:Ljava/lang/String; = "fc-message"

.field public static final PADDING_BORDER:I = 0xf

.field public static final PADDING_INTERNAL:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x3f4ccccd

    invoke-static {v0}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/factionchoice/FactionChoiceStyles;->BUTTON_WIDTH:Lcom/a/a/e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
